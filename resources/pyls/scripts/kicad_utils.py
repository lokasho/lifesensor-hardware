import configparser
import enum
import hashlib
import logging
import os
import pathlib
import sys
from collections import defaultdict, namedtuple
from typing import Callable, Dict, Sequence, Tuple, Generator, Iterator, Union, Optional, List

logger = logging.getLogger("root")

kicad_config_dir = dict(darwin=pathlib.Path.home() / "Library/Preferences/kicad/").get(
    sys.platform, pathlib.Path("/kicad/config/dir/not/found")
)

if kicad_config_dir is None:
    raise RuntimeError("Cannot find kicad config directory. Did you install it?")


def find_all_sch_file_paths(project_path: pathlib.Path):
    list_of_files = list()

    def recurse_sheet(path: pathlib.Path):
        if not path.is_absolute():
            path = project_path.parent / path
        logger.debug("Parsing schematic: " + str(path))
        if path not in list_of_files:
            list_of_files.append(path)
        for subsheet, line_nr in extract_subsheets(path):
            recurse_sheet(subsheet)

    recurse_sheet(project_path.with_suffix(".sch"))
    return list_of_files


def extract_subsheets(file_path: pathlib.Path) -> Iterator[Tuple[pathlib.Path, int]]:
    logger.debug("Extracting subsheets from {}".format(file_path))
    with open(file_path) as f:
        lines = f.readlines()

    sheet_line_indices = index_lines_starting_with(lines, "$Sheet")
    endsheet_line_indices = index_lines_starting_with(lines, "$EndSheet")

    assert len(sheet_line_indices) == len(
        endsheet_line_indices
    ), "Schematic page contains errors"

    logger.info("Found {} subsheets in {}".format(len(sheet_line_indices), file_path))

    for sheet_begin, sheet_end in zip(sheet_line_indices, endsheet_line_indices):
        sheet_reference = lines[sheet_begin:sheet_end]
        idx, line = idcs_lines_starting_with(sheet_reference, "F1")[0]
        path = pathlib.Path(line.split()[1].replace('"', ""))
        idx += sheet_begin  # add offset from original file start

        if not path.is_absolute():
            # check if path is encoded with variable
            path = resolved_env_vars(path)

        yield path, idx


def walk_all_sch_lines(project_file_path: pathlib.Path, file_idx_linehandler):
    if isinstance(project_file_path, str):
        project_file_path = pathlib.Path(project_file_path)
    main_schematic_file_path = project_file_path.with_suffix(".sch")
    assert main_schematic_file_path.exists()
    all_sch_files = find_all_sch_file_paths(main_schematic_file_path)
    logger.info("Found {} schematic files.".format(len(all_sch_files)))
    for file in all_sch_files:
        with open(file) as f:
            for idx, line in enumerate(f):
                file_idx_linehandler(file, idx, line)


def available_libraries(project_dir: pathlib.Path) -> Dict[str, pathlib.Path]:
    global_libs = _collect_global_libraries()
    local_libs = _collect_project_libraries(project_dir)
    return {**global_libs, **local_libs}


def _collect_global_libraries() -> Dict[str, pathlib.Path]:
    global_sym_lib_table_path = kicad_config_dir / "sym-lib-table"
    libraries = {}
    if global_sym_lib_table_path.exists():
        libraries.update(extract_libs_from_table(global_sym_lib_table_path))
    return libraries


def _collect_project_libraries(project_dir) -> Dict[str, pathlib.Path]:
    proj_sym_lib_table_path = project_dir / "sym-lib-table"
    libraries = {}
    if proj_sym_lib_table_path.exists():
        libraries.update(extract_libs_from_table(proj_sym_lib_table_path))
    return libraries


def extract_libs_from_table(lib_table_path: pathlib.Path) -> Dict[str, pathlib.Path]:
    library_map = dict()

    with open(lib_table_path) as f:
        for line in f:
            line = line.replace(")", "")
            fields = line.split("(")
            curr_name = None
            curr_path = None
            for field in fields:
                if " " in field and field.strip():
                    parts = field.split()
                    if len(parts) == 2:
                        key, val = parts
                        if key == "name":
                            curr_name = val
                        elif key == "uri":
                            curr_path = val
            if curr_name is not None and curr_path is not None:
                library_map[curr_name] = pathlib.Path(curr_path)
    logger.debug("Library table had {} entries".format(len(library_map)))
    return library_map


def kicad_common_preferences():
    with open(kicad_config_dir / "kicad_common") as f:
        content = "\n".join(("[etc]", f.read()))
    config = configparser.ConfigParser()
    config.read_string(content)
    return config


def resolved_env_vars(path: Union[str, pathlib.Path]) -> pathlib.Path:
    path = str(path)
    if "${" in path:
        start_index = path.find("${") + 2
        end_index = path.find("}")
        env_var = path[start_index:end_index]
        logger.debug("Found env var {} in path.".format(env_var))
        # when run as pcbnew plugin the environment variables are defined
        val = os.getenv(env_var)
        # otherwise try to get env vars manually from global kicad prefs file
        if val is None:
            kicad_prefs = kicad_common_preferences()
            if env_var in kicad_prefs["EnvironmentVariables"]:
                val = kicad_prefs["EnvironmentVariables"][env_var]
            else:
                raise LookupError("Can not resolve '{}'".format(path))
        # replace variable with full path
        path = path.replace("${", "").replace("}", "").replace(env_var, val)
    return pathlib.Path(path)


def index_lines_starting_with(lines, start):
    indices = tuple(i for i, line in enumerate(lines) if line.startswith(start))
    return indices


def idcs_lines_starting_with(lines, start) -> Tuple[Tuple[int, str], ...]:
    matches = tuple(
        (idx, line) for idx, line in enumerate(lines) if line.startswith(start)
    )
    return matches


class CopyConflictSolution(enum.Enum):
    CREATE_NEW = 0
    USE_DEST = 1
    UPDATE_DEST = 2


CopyConflictSolver = Callable[[str, "Library", "Library"], CopyConflictSolution]


class KiCadProject:
    def __init__(self, path: pathlib.Path):
        path = path.resolve()
        logger.debug("Initialized KiCad project with {}".format(path))
        if path.is_file() and path.suffix == ".pro":
            self._basedir = path.parent
            self._path = path
        else:
            raise FileNotFoundError("The path is not a KiCad project.")
        self._name = path.stem
        sch_paths = find_all_sch_file_paths(self._path)
        logger.debug("Found {} schematic files.".format(len(sch_paths)))
        self._schematics = tuple(Schematic(self, p) for p in sch_paths)
        self._layout = Layout(self.path.with_suffix(".kicad_pcb"))
        self._symbol_cache = Library(
            self.name + "-cache", self.basedir / (self.name + "-cache.lib")
        )
        self._loaded_libs = {}  # type: Dict[str, "Library"]
        self._archive_path = self._basedir / "lib_schematic" / (self.name + ".lib")
        self._archive_nick = self._name
        self._archive = None  # type: Union[None, "Library"]
        self._handled_symbols = defaultdict(dict)  # type: Dict[str, Dict[str, Symbol]]
        if self._archive_path.exists():
            self.load_library(self.name)
        self._table_path = self._basedir / "sym-lib-table"
        self._sym_lib_table = (
            SymLibTable(self._table_path) if self._table_path.exists() else None
        )

    @property
    def path(self) -> pathlib.Path:
        return self._path

    @property
    def basedir(self) -> pathlib.Path:
        return self._basedir

    @property
    def name(self) -> str:
        return self._name

    @property
    def schematics(self) -> Sequence["Schematic"]:
        return self._schematics

    @property
    def symbol_cache(self) -> "Library":
        return self._symbol_cache

    @property
    def symbol_archive(self) -> Optional["Library"]:
        return self._archive

    @property
    def lib_map(self) -> Dict[str, pathlib.Path]:
        return available_libraries(self.basedir)

    def archive_symbols(self, conflict_solver: CopyConflictSolver, dry_run=True):
        unarchived_refs = [
            ref
            for sch in self.schematics
            for ref in sch.refs
            if ref.library_nick != self._archive_nick
        ]
        logger.info("Found {} unarchived references.".format(len(unarchived_refs)))
        self.add_archive_library()
        assert isinstance(self._archive, Library)
        logger.info("Added archive at {}".format(self._archive.path))
        for ref in unarchived_refs:
            # check if symbol was already handled, otherwise copy it
            new_sym = self._handled_symbols.get(ref.library_nick, {}).get(
                ref.name, None
            )
            if not new_sym:
                source_lib = self.load_library(ref.library_nick)
                new_sym = copy_symbol(
                    ref.name, source_lib, self._archive, conflict_solver
                )
            self._handled_symbols[ref.library_nick][ref.name] = new_sym

            # update the reference
            ref.schematic.update_reference(ref, self._archive_nick, new_sym.name)
        else:
            raise RuntimeError("Tried to archive before archive was created.")

        # after all neccessary changes have been made in memory, save them to the files
        if not dry_run:
            self.dump_all_files()

    def dump_all_files(self) -> None:
        for sch in self._schematics:
            sch.dump()
        self._layout.dump()
        self._symbol_cache.dump()
        if self._archive is not None:
            if not self._archive_path.parent.exists():
                os.makedirs(self._archive_path.parent)
            self._archive.dump()
        if self._sym_lib_table is not None:
            self._sym_lib_table.dump()

    def add_sym_lib_table(self):
        self._sym_lib_table = SymLibTable(self._table_path)

    def add_archive_library(self):
        self._archive = Library(self._archive_nick, self._archive_path)
        self.add_sym_lib_table()
        if not self._name in self._sym_lib_table:
            relative_archive_path = self._archive_path.relative_to(self.basedir)
            export_path = pathlib.Path("${KIPRJMOD}") / relative_archive_path
            self._sym_lib_table.add_library(self._archive_nick, export_path)

    def load_library(self, nick: str) -> "Library":
        if nick in self._loaded_libs:
            lib = self._loaded_libs[nick]
        else:
            lib_path = available_libraries(self.basedir)[nick]
            lib_path_str = str(lib_path).replace("${KIPRJMOD}", str(self.basedir))
            lib = Library(nick, pathlib.Path(lib_path_str))
            self._loaded_libs[nick] = lib
        return lib


def copy_symbol(
    name: str,
    source_lib: "Library",
    dest_lib: "Library",
    conflict_solver: CopyConflictSolver,
) -> "Symbol":
    logger.info(
        "Copying {} from {} to {}.".format(name, source_lib.nickname, dest_lib.nickname)
    )
    if name in dest_lib.symbols:
        # a symbol with name already exists
        source_content = "".join(source_lib.symbols[name].content)
        dest_content = "".join(dest_lib.symbols[name].content)
        if source_content != dest_content:
            logger.info("detected conflict")
            # handle conflict
            solution = conflict_solver(name, source_lib, dest_lib)
            if solution is CopyConflictSolution.CREATE_NEW:
                dest_name = "_".join((source_lib.nickname, name))
                original = source_lib.symbols[name]
                content = original.content
                for i, line in enumerate(content):
                    if line.startswith("DEF"):
                        def_line = line.split(" ")
                        def_line[1] = "_".join((source_lib.nickname, def_line[1]))
                        content[i] = " ".join(def_line)
                    elif line.startswith("ALIAS"):
                        alias_line = line.split(" ")
                        alias_line[1] = "_".join((source_lib.nickname, alias_line[1]))
                        content[i] = " ".join(alias_line)
                dest_lib.append_symbol(dest_name, original.content)
            elif solution is CopyConflictSolution.UPDATE_DEST:
                dest_name = name
                original = source_lib.symbols[name]
                dest_lib.update_symbol(name, original.content)
            elif solution is CopyConflictSolution.USE_DEST:
                # nothing to be done, just return the destinations symbol
                dest_name = name
            else:
                raise ValueError(
                    "The conflict solving function, did not return a valid solution."
                )
        else:
            # symbols are equal, nothing to be done
            logger.info(
                "Symbol {} already available in {}".format(name, dest_lib.nickname)
            )
            dest_name = name
    else:
        # copy symbol to dest
        dest_name = name
        sym = source_lib.symbols[name]
        dest_lib.append_symbol(name, sym.content)
    return dest_lib.symbols[dest_name]


SymbolReference = namedtuple(
    "SymbolReference", ("schematic", "line_idx", "library_nick", "name")
)


Symbol = namedtuple("Symbol", ("name", "line_idxs", "content"))


class SymLibTable:
    EMPTY_TEMPLATE = (u"(sym_lib_table\n", u")")
    _ENTRY_TEMPLATE = (
        "  (lib "
        "(name {name})"
        "(type Legacy)"
        "(uri {path})"
        '(options "{options}")'
        '(descr "{description}")'
        ")\n"
    )

    def __init__(self, path: pathlib.Path):
        self._path = path
        self._lines = list(self.EMPTY_TEMPLATE)  # type: List[str]
        self._libs = {}
        if self._path.exists():
            with open(self._path) as f:
                self._lines = f.readlines()
            self._libs = extract_libs_from_table(self._path)

    def __contains__(self, key):
        return key in self._libs

    def add_library(
        self,
        nick: str,
        path: pathlib.Path,
        index: int = None,
        description: str = "",
        options: str = "",
    ) -> None:
        line = SymLibTable._ENTRY_TEMPLATE.format(
            name=nick, path=path, options=options, description=description
        )
        if not index:
            self._lines.append(line)
        else:
            self._lines.insert(index, line)

    def remove_library(self, nick: str):
        for line in self._lines:
            if line.startswith("    (lib (name {})".format(nick)):
                raise NotImplemented("Can not remove library yet")
        else:
            raise LookupError("Library '{}' not in sym-lib-table".format(nick))

    def path_for_library(self, nick: str) -> pathlib.Path:
        try:
            return self._libs[nick]
        except KeyError as e:
            raise KeyError("Library nick name '{}' not known.")

    def dump(self):
        with open(self._path, "w") as f:
            f.writelines(self._lines)

    def has_library(self, nick: str) -> bool:
        return nick in self._libs


class Layout:
    def __init__(self, path: pathlib.Path):
        self._path = path
        with open(self._path) as f:
            self._lines = f.readlines()

    def dump(self):
        with open(self._path, "w") as f:
            f.writelines(self._lines)


class Library:

    EMPTY_TEMPLATE = (
        "EESchema-LIBRARY Version 2.4\n",
        "#encoding utf-8\n",
        "\n",
        "#End Library\n",
    )

    def __init__(self, nickname: str, path: pathlib.Path):
        self._nick = nickname
        self._path = resolved_env_vars(path)
        self._symbols = {}  # type: Dict[str, Symbol]
        self._lines = list(Library.EMPTY_TEMPLATE)
        if self._path.exists():
            self._parse_file()

    def _parse_file(self) -> None:
        with open(self._path) as f:
            self._lines = f.readlines()
        self._symbols = SymbolLibraryParser(self._lines).symbols()

    @property
    def symbols(self):
        return self._symbols

    @property
    def path(self):
        return self._path

    @property
    def nickname(self):
        return self._nick

    def append_symbol(self, name: str, content: Sequence[str]):
        if name in self.symbols:
            raise KeyError("A Symbol '{}' already exists.")
        new_symbol = Symbol(name, (len(self._lines) - 2, len(content)), content)
        self._symbols[name] = new_symbol
        for line in content:
            self._lines.insert(-2, line)

    def update_symbol(self, name: str, content: Sequence[str]):
        try:
            original = self._symbols[name]
            # remove old symbol lines
            del self._lines[original.line_idxs[0] : original.line_idxs[1]]
            # build new symbol
            line_idxs = (original.line_idxs[0], original.line_idxs[0] + len(content))
            new = Symbol(name, line_idxs, content)
            self._symbols[name] = new
            # insert new symbol lines
            for i, line in enumerate(content):
                self._lines.insert(line_idxs[0] + i, line)
        except KeyError as e:
            raise KeyError("Library has no symbol '{}'.".format(name)) from e

    def remove_symbol(self, name: str):
        try:
            symbol = self.symbols.pop(name)
            del self._lines[symbol.line_idxs[0] : symbol.line_idxs[1]]
        except KeyError as e:
            msg = "This library does not have a symbol '{}'"
            raise KeyError(msg.format(name)) from e

    def dump(self) -> None:
        with open(self._path, "w") as f:
            f.writelines(self._lines)


class SymbolLibraryParser:

    class State(enum.Enum):
        OUTSIDE_SYMBOL = 0
        WITHIN_SYMBOL = 1

    def __init__(self, lines: Sequence[str]):
        self.state = SymbolLibraryParser.State.OUTSIDE_SYMBOL
        self._lines = lines  # type: Sequence[str]
        self.curr_name = ""
        self.curr_content = list()  # type: List[str]
        self.curr_aliases = list()  # type: List[str]
        self.curr_first_line_idx = None
        self._symbols = dict()  # type: Dict[str, Symbol]

    def symbols(self) -> Dict[str, Symbol]:
        if not self._symbols:
            self._parse()
        return self._symbols

    def _parse(self) -> None:
        self._reset()
        for idx, line in enumerate(self._lines):
            if line.startswith("DEF"):
                self.on_enter_symbol(idx, line)
            elif line.startswith("ENDDEF"):
                self.on_leave_symbol(line)
            elif self.state == SymbolLibraryParser.State.WITHIN_SYMBOL and line.startswith("ALIAS"):
                self.on_new_alias(line)
            elif self.state == SymbolLibraryParser.State.OUTSIDE_SYMBOL and line.startswith("#"):
                self.on_new_comment(line)
            else:
                self.curr_content.clear()

    def _reset(self):
        self.state = SymbolLibraryParser.State.OUTSIDE_SYMBOL
        self.curr_name = ""
        self.curr_content.clear()
        self.curr_aliases.clear()
        self.curr_first_line_idx = None
        self._symbols.clear()

    def on_enter_symbol(self, idx, line):
        assert self.state is SymbolLibraryParser.State.OUTSIDE_SYMBOL
        self.state = SymbolLibraryParser.State.WITHIN_SYMBOL
        curr_first_line_idx = idx - len(self.curr_content)
        assert 0 <= curr_first_line_idx < len(self._lines)
        self.curr_content.append(line)
        symbol_name_position = 1
        curr_name = line.split()[symbol_name_position]

    def on_leave_symbol(self, line):
        assert self.state is SymbolLibraryParser.State.WITHIN_SYMBOL
        self.state = SymbolLibraryParser.State.OUTSIDE_SYMBOL
        self.curr_content.append(line)
        curr_last_line_idx = self.curr_first_line_idx + len(self.curr_content)
        assert 0 < curr_last_line_idx < len(self._lines)
        new_sym = Symbol(
            self.curr_name, (self.curr_first_line_idx, curr_last_line_idx), self.curr_content
        )
        self._symbols[self.curr_name] = new_sym
        for alias in self.curr_aliases:
            self._symbols[alias] = new_sym
        if self.curr_aliases:
            logger.debug(
                "Loaded symbol '{}:{} ({})'".format(
                    self.nickname, new_sym.name, self.curr_aliases
                )
            )
        else:
            logger.debug(
                "Loaded symbol '{}:{}'".format(self.nickname, new_sym.name)
            )
        self.curr_content = list()
        self.curr_aliases = list()

    def on_new_alias(self, line):
        alias = line.strip().split()[1]
        self.curr_aliases.append(alias)
        self.curr_content.append(line)

    def on_new_comment(self, line):
        self.curr_content.append(line)


class Schematic:
    def __init__(self, project: KiCadProject, path: pathlib.Path):
        if not path.exists():
            msg = "Could not find Schematic {}"
            raise FileNotFoundError(msg.format(resolved_env_vars(path)))
        self.project = project
        self.path = path
        self.refs = []  # type: List[SymbolReference]
        self.lines = []  # type: List[str]
        self._parse_file()

    def _parse_file(self) -> None:
        OUTSIDE_COMPONENT = 0
        WITHIN_COMPONENT = 1
        state = OUTSIDE_COMPONENT

        with open(self.path) as f:
            self.lines = f.readlines()

        for idx, line in enumerate(self.lines):
            if line.startswith("$Comp"):
                assert state is OUTSIDE_COMPONENT
                state = WITHIN_COMPONENT
            elif line.startswith("$EndComp"):
                assert state is WITHIN_COMPONENT
                state = OUTSIDE_COMPONENT
            elif state == WITHIN_COMPONENT and line.startswith("L"):
                lib_nick, name = line.split()[1].split(":")
                self.refs.append(
                    SymbolReference(
                        schematic=self, line_idx=idx, library_nick=lib_nick, name=name
                    )
                )

    def refs_not_archived(self) -> Tuple[SymbolReference, ...]:
        return tuple(ref for ref in self.refs if ref.library_nick != self.project.name)

    def update_reference(self, ref: SymbolReference, new_lib_nick: str, new_name: str):
        line = ref.schematic.lines[ref.line_idx]
        lib_nick, name = line.split(":")
        new_ref = SymbolReference(
            schematic=self,
            line_idx=ref.line_idx,
            library_nick=new_lib_nick,
            name=new_name,
        )
        lib_nick = lib_nick.replace(ref.library_nick, new_ref.library_nick)
        name = name.replace(ref.name, new_ref.name)
        line = ":".join((lib_nick, name))
        ref.schematic.lines[ref.line_idx] = line

    def dump(self) -> None:
        with open(self.path, "w") as f:
            f.writelines(self.lines)


if __name__ == "__main__":
    path = pathlib.Path(
        "../../components/ecg_ads1292/pcbs/ecg_ads1292_main/kicad/ecg_ads1292_main.pro"
    )
    project = KiCadProject(path)

    def solve_conflict(name, lib_a, lib_b):
        logger.info(
            "Conflict for {}, between library {} and {}".format(
                name, lib_a.path, lib_b.path
            )
        )
        return CopyConflictSolution.CREATE_NEW

    project.archive_symbols(solve_conflict, dry_run=False)
