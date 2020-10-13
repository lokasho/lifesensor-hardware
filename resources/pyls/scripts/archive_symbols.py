"""
Create and use a local symbol archive for a KiCAD project.

WARNING: THIS SCRIPT MUST NOT BE RUN WHILE EESCHEMA IS RUNNING.
OTHERWISE YOUR SCHEMATIC FILES MIGHT GET CORRUPTED!

The script is inteded to be used before a KiCAD project is pushed to a remote
git server. It ensures that no external library dependencies remain, so that
other contributors always have all needed symbols included, when they pull your
version.

Therefore a local symbol library next to the given KiCAD project file is
created, containing copies of all the symbols used in the project.
The name of the symbol archive equals the project name.
If this library already exists, all missing symbols are copied their.
Afterwards all components in all schematics use these copied symbols.
Additionally a local sym-lib-table file is created or altered so that eeschema
prepends the archive library to the available libraries.

All other symbol libraries within the projects directory, are
deleted after asking for your permission.
"""


import argparse
import logging
import os
import pathlib
import sys
from collections import namedtuple
from typing import Dict, Sequence

import common_utils
import kicad_utils

root = logging.getLogger()
handler = logging.StreamHandler(sys.stdout)
handler.setLevel(logging.DEBUG)
formatter = logging.Formatter("%(levelname)s:%(funcName)s: %(message)s")
handler.setFormatter(formatter)
root.addHandler(handler)


def main(args=None):
    msg = "Please file an issue with the necessary step to reproduce this error."
    with common_utils.ExceptionGuard(msg):
        with common_utils.ExceptionGuard("", guards=(AssertionError,)):
            settings = collect_settings(args)
            path = pathlib.Path(settings.path)
            assert path.exists(), "The path {} does not exist.".format(path)
            assert path.is_file(), "The path {} is not a file.".format(path)
            assert (
                path.suffix == ".pro"
            ), "The path {} seems not to be a KiCAD project file.".format(path)
        print("Archiving {}".format(path.relative_to(os.curdir)))
        project = kicad_utils.KiCadProject(path)
        project.archive_symbols(choose_copy_conflict_solution, dry_run=settings.dry)
    print("Finished.")


def collect_settings(args):
    parser = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawTextHelpFormatter
    )
    parser.add_argument("path", help="Path to the KiCAD project file")
    parser.add_argument("-d", "--dry", action="store_true")
    parser.add_argument("-l", "--logging", action="store_true")
    settings = parser.parse_args(args)
    if settings.logging:
        root.setLevel(logging.INFO)
    else:
        root.setLevel(logging.ERROR)
    return settings


def choose_copy_conflict_solution(
    symbol_name: str, source_lib: kicad_utils.Library, archive_lib: kicad_utils.Library
) -> kicad_utils.CopyConflictSolution:

    msg = (
        f"The symbol '{symbol_name}' already exists in the archive, but has a",
        "different definition. Please choose the option to solve this conflict:",
        "  1. create a new symbol in the archive, with the originals library",
        "     nick name prepended to the symbols name.",
        "  2. use the already archived symbol",
        "  3. update the symbol in the archive",
        "  4. abort archiving the symbols.",
        "The first option is the most secure.",
        "The other options should only be used if you really know what you are doing. ",
    )
    print("\n".join(msg))
    option = ""
    while not isinstance(option, int):
        option = input("Enter your option [1/2/3/4]: ").strip()
        try:
            if not option or int(option) > 3:
                print("Aborted.")
                sys.exit(0)
        except ValueError:
            print("Enter a number between 1 and 4, or just press enter to abort.")
    return {
        1: kicad_utils.CopyConflictSolution.CREATE_NEW,
        2: kicad_utils.CopyConflictSolution.USE_DEST,
        3: kicad_utils.CopyConflictSolution.UPDATE_DEST,
    }[option]


if __name__ == "__main__":
    main()
