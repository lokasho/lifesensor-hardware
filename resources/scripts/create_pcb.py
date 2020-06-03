import shutil
import create_utils

TEMPLATE_DIR = create_utils.template_base_dir() / "template_pcb"
COMPONENTS_DIR_NAME = "components"
DEBUG = True


def main():
    try:
        settings = collect_settings()
        create_pcb(settings)
    except AssertionError as e:
        raise e
    except Exception as e:
        if DEBUG:
            raise e
        else:
            print(e)


def create_pcb(settings: create_utils.Settings):
    ensure_component_dir_exists(settings)
    shutil.copytree(TEMPLATE_DIR, create_utils.board_dir(settings))
    create_utils.update_file_name_and_content(create_utils.board_dir(settings), settings)


def collect_settings() -> create_utils.Settings:
    parser = create_utils.add_component_settings()
    create_utils.add_board_settings(parser)
    arguments = parser.parse_args()
    settings = create_utils.Settings(**vars(arguments))
    return settings


def ensure_component_dir_exists(settings: create_utils.Settings) -> bool:
    comp_dir = create_utils.component_dir(settings)
    create_question = "Component does not exist. Do you want to create it now? [y/n]: "
    if not comp_dir.exists() and input(create_question).lower().startswith("y"):
        import create_component
        comp_settings = create_utils.Settings(
            settings.repo,
            settings.component,
            settings.variant)
        create_component.create_component(comp_settings)


if __name__ == '__main__':
    main()
