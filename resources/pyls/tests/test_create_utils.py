import pytest
import hypothesis as ht
import create_utils
import argparse
import pathlib
import os


def test_add_component_settings_returns_given_parser():
    parser = argparse.ArgumentParser()
    returned_parser = create_utils.add_component_settings(parser)
    assert returned_parser is parser, "The returned parser differs from the given parser"


def test_add_component_settings_returns_parser():
    returned_parser = create_utils.add_component_settings()
    assert isinstance(returned_parser, argparse.ArgumentParser)


def test_add_component_settings_parser_requires_component_and_variant():
    returned_parser = create_utils.add_component_settings()
    # component and variant name missing
    with pytest.raises(SystemExit) as einfo:
        returned_parser.parse_args([])
    assert einfo.value.code == 2
    # only one component name given
    with pytest.raises(SystemExit) as einfo:
        returned_parser.parse_args(["component"])
    assert einfo.value.code == 2


def test_add_component_settings_namespace_has_repo_component_and_variant():
    parser = create_utils.add_component_settings()
    namespace = parser.parse_args(["component", "variant"])
    assert namespace.component == "component"
    assert namespace.variant == "variant"
    assert namespace.repo == pathlib.Path(os.getcwd())
    # with external parser
    parser = argparse.ArgumentParser()
    create_utils.add_component_settings(parser)
    namespace = parser.parse_args(["component", "variant"])
    assert namespace.component == "component"
    assert namespace.variant == "variant"
    assert namespace.repo == pathlib.Path(os.getcwd())
