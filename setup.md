# rust template

This file describes how to setup this template.

## Features

- Adds binaries automatically when a release is created
- Creates docker images on release
- Provide pull-request template with information for versioning

## Assumptions

- This template is tested only with a single program and a single binary.

## Usage

### Setup

1. Create a project based on this template
   - Select this template when creating a new project on GitHub
   - Go to [https://github.com/yawn77/tmplrust/](https://github.com/yawn77/tmplrust/) and click on _Use this template_
2. Rename tmplrust to your project name in every file
3. Adapt `README.md`. Enter the project name and adapt sections to your needs (further inspiration: [https://www.makeareadme.com/](https://www.makeareadme.com/))
4. Select a license (e.g., from [https://choosealicense.com/](https://choosealicense.com/))
   - Replace the `LICENSE` file
   - Edit the license link at the end of `README.md` file
5. Adapt GitHub actions to your needs
6. For docker releases create the repository secrets _DOCKERHUB_USERNAME_ and _DOCKERHUB_TOKEN_ according to your docker hub account
7. Remove `setup.md`

## Maintenance

- Update date in `LICENSE` file on new year's day

## Recommendations

- Use [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) to be compatible with future versions of this template
- Maintain the [changelog](https://keepachangelog.com/en/1.0.0/) with each commit. There will be features which will automate the maintenance of this file to some extent in the future.
- Branch protection for `main` and `v[0-9]*`
  - _Enable:_ Require a pull request before merging
  - _Enable:_ Require status checks to pass before merging
    - _Enable:_ Require branches to be up to date before merging
    - Select status checks
  - _Enable:_ Require conversation resolution before merging
  - _Enable:_ Do not allow bypassing the above settings
