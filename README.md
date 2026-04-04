![Avatar](avatar.jpg)

[![Build Status](https://github.com/cliffano/doco/workflows/CI/badge.svg)](https://github.com/cliffano/doco/actions?query=workflow%3ACI)
[![Security Status](https://snyk.io/test/github/cliffano/doco/badge.svg)](https://snyk.io/test/github/cliffano/doco)

# Doco

Doco is a Makefile for building Markdown website .
It provides utility targets for linting and releasing Markdown website projects.

Have a look at [DocoExample](examples/) as an example project which uses Doco.

## Installation

1. Download `src/Makefile-doco` as the `Makefile` of your project:
    `curl https://raw.githubusercontent.com/cliffano/doco/main/src/Makefile-doco -o Makefile`
2. Create configuration file `doco.yml` with properties described in [Configuration](#configuration) section
3. Run the available `Makefile` targets described in [Usage](#usage) section

## Configuration

| Key | Value |
|-----|-------|
| project_id | doco |
| project_name | Doco |
| project_desc | A sample Markdown website built by Doco |
| author_name | Cliffano Subagio |
| author_email | cliffano@gmail.com |
| github_id | cliffano |
| github_repo | doco |

Usage
-----

The following targets are available:

| Target | Description |
|--------|-------------|
| ci | CI target to be executed by CI/CD tool, end to end build of the Python package |
| deps | Retrieve package dependencies using [Poetry](https://python-poetry.org/) |
| lint | Run lint checks against source and test code using [yamllint](https://github.com/adrienverge/yamllint) |
| release-major | Create a major release using [rtk](https://github.com/cliffano/rtk) |
| release-minor | Create a minor release using [rtk](https://github.com/cliffano/rtk) |
| release-patch | Create a patch release using [rtk](https://github.com/cliffano/rtk) |

Colophon
--------

Related Projects:

* [generator-website](https://github.com/cliffano/generator-website) - Website projects generator using Plop
