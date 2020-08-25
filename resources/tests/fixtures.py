import pytest
import pathlib
import create_utils

TEST_RESOURCE_DIR = pathlib.Path(__file__).parent / "resources"


@pytest.fixture
def kicad_project(tmpdir):
    os.mkdir(pathlib.Path(tmpdir) / create_utils.COMPONENTS_DIR_NAME)
    settings = create_utils.Settings(
        repo=pathlib.Path(tmpdir),
        component="temp",
        variant="virtual",
        boardname="test")
    create_component.create_component(settings)
    project_path = settings.repo / "components/temp_virtual/pcbs"
    project_path /= "temp_virtual_test/kicad/temp_virtual_test.pro"
    return project_path
