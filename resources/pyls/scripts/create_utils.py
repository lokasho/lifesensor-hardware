import argparse
import os
import pathlib
import sys
from typing import Sequence, Union

if sys.version_info >= (3, 7):
    from dataclasses import dataclass

    @dataclass(frozen=True)
    class Settings:
        # lifesensor repository directory
        repo: pathlib.Path
        # name of the component (e.g. "ecg")
        component: str
        # name describing variant of the component
        # (e.g. "ads1292" when used as ecg sensor)
        variant: str
        # name of a board(s)
        boardname: str = ""


else:

    class Settings:
        def __init__(
            self,
            repo: pathlib.Path,
            component: str,
            variant: str,
            boardname: str = "",
        ):
            self.repo = repo
            self.component = component
            self.variant = variant
            self.boardname = boardname


COMPONENTS_DIR_NAME = "components"


def lower_case_string(string: str) -> str:
    """
    Convert a string to all lower case. Used in settings as factory
    """
    return string.lower()


def add_component_settings(
    parser: argparse.ArgumentParser = None,
) -> argparse.ArgumentParser:
    parser = parser or argparse.ArgumentParser()
    parser.add_argument(
        "-r/--repo",
        dest="repo",
        type=pathlib.Path,
        default=pathlib.Path(os.getcwd()),
        help="Path to the lifesensor repository. Defaults to current working directory",
    )
    parser.add_argument(
        dest="component",
        type=lower_case_string,
        help='Name of the component (e.g. "ecg"). '
        "Will be converted to all lower case.",
    )
    parser.add_argument(
        dest="variant",
        type=lower_case_string,
        help="Name of the new variant (the main ICs name for example)."
        "Will be converted to all lower case.",
    )
    return parser


def check_new_component_settings(settings: Settings):
    if not settings.repo.exists():
        raise FileNotFoundError("The given repository path does not exist .")
    if not settings.repo.is_dir():
        raise FileExistsError("The given repository path is not a directory.")
    if not (settings.repo / COMPONENTS_DIR_NAME).exists():
        msg = (
            f"The given repository does not contain a {COMPONENTS_DIR_NAME} directory."
        )
        raise FileNotFoundError(msg)
    if component_dir(settings).exists():
        raise FileExistsError("The component does already exist.")


def check_new_board_settings(settings: Settings):
    if (component_dir(settings) / "pcbs" / full_board_name(settings)).exists():
        raise FileExistsError("The board already exists.")


def add_board_settings(
    parser: argparse.ArgumentParser = None,
) -> argparse.ArgumentParser:
    parser = parser or argparse.ArgumentParser()
    parser.add_argument(
        "-b/--boardname",
        dest="boardname",
        default="main",
        type=lower_case_string,
        help='Name of the pcb (defaults to "main"). '
        "Will be converted to all lower case.",
    )
    return parser


def update_file_name_and_content(path: pathlib.Path, settings: Settings):
    new_name = _replace_template_strings(path.name, settings)
    new_path = path.parent / new_name
    path.rename(new_path)
    if new_path.is_dir():
        for path in new_path.iterdir():
            if not path.name.startswith("."):
                update_file_name_and_content(path, settings)
    else:
        with open(new_path, "r") as f:
            content = _replace_template_strings(f.read(), settings)
        with open(new_path, "w") as f:
            f.write(content)


def _replace_template_strings(template: str, settings: Settings) -> str:
    assert isinstance(template, str)
    return (
        template.replace("COMPONENT", settings.component)
        .replace("VARIANT", settings.variant)
        .replace("PCBNAME", settings.boardname or "")
    )


def component_name(settings: Settings) -> str:
    return settings.component + "_" + settings.variant


def component_dir(settings: Settings) -> pathlib.Path:
    comp_dir = (
        settings.repo / COMPONENTS_DIR_NAME / component_name(settings)
    ).resolve()
    return comp_dir


def full_board_name(settings: Settings) -> str:
    return "_".join((settings.component, settings.variant, settings.boardname))


def board_dir(settings: Settings) -> pathlib.Path:
    board_dir = component_dir(settings) / "pcbs" / full_board_name(settings)
    return board_dir


def template_base_dir() -> pathlib.Path:
    return pathlib.Path(__file__).resolve().parents[1] / "templates"
