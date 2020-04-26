import pathlib
import shutil

import create_utils

TEMPLATE_DIR = pathlib.Path("../template_component").resolve()
DEBUG = True


def main():
    try:
        settings = collect_settings()
        create_component(settings)
    except Exception as e:
        if DEBUG:
            raise e
        else:
            print(str(e))


def collect_settings() -> create_utils.Settings:
    parser = create_utils.add_component_settings()
    arguments = parser.parse_args()
    settings = create_utils.Settings(**vars(arguments))
    return settings


def create_component(settings: create_utils.Settings):
    create_utils.check_new_component_settings(settings)
    comp_dir = create_utils.component_dir(settings)
    assert not comp_dir.exists()
    print(f"Create component at {comp_dir}")
    shutil.copytree(TEMPLATE_DIR, comp_dir)
    create_utils.update_file_name_and_content(comp_dir, settings)


if __name__ == '__main__':
    main()
