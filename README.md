![Avatar](avatar.jpg)

[![Build Status](https://github.com/cliffano/doco/workflows/CI/badge.svg)](https://github.com/cliffano/doco/actions?query=workflow%3ACI)
[![Security Status](https://snyk.io/test/github/cliffano/doco/badge.svg)](https://snyk.io/test/github/cliffano/doco)

# Doco

Doco is a Makefile for building DocoSite website .
It provides utility targets for linting and releasing DocoSite website projects.

Have a look at [DocoExample](examples/) as an example project which uses Doco.

## Installation

1. Download `src/Makefile-doco` as the `Makefile` of your project:
    `curl https://raw.githubusercontent.com/cliffano/doco/main/src/Makefile-doco -o Makefile`
2. Create configuration file `doco.yml` with properties described in [Configuration](#configuration) section
3. Run the available `Makefile` targets described in [Usage](#usage) section

## Configuration

Create Doco configuration file called `doco.yml` with contains the following properties:

| Property | Description | Example |
|----------|-------------|---------|
| generator.component | The generator component type from [generator-website](https://github.com/cliffano/generator-website) | `doco-site` |
| generator.inputs.project_id | The project ID | `somedocosite` |
| generator.inputs.project_name | The project display name | `Some DocoSite` |
| generator.inputs.project_desc | The project description | `A sample DocoSite website` |
| generator.inputs.author_name | The author's name | `Some Author` |
| generator.inputs.author_email | The author's email address | `someauthor@example.com` |
| generator.inputs.github_id | The GitHub user or organisation ID | `pakkunbot` |
| generator.inputs.github_repo | The GitHub repository name | `docoexample` |

Usage
-----

The following targets are available:

| Target | Description |
|--------|-------------|
| ci | CI target to be executed by CI/CD tool, end to end build of the DocoSite |
| deps-extra-apt | Retrieve dependencies requiring installation using apt |
| lint | Run lint checks against Markdown files using [markdownlint](https://github.com/markdownlint/markdownlint) |
| release-major | Create a major release using [rtk](https://github.com/cliffano/rtk) |
| release-minor | Create a minor release using [rtk](https://github.com/cliffano/rtk) |
| release-patch | Create a patch release using [rtk](https://github.com/cliffano/rtk) |

Colophon
--------

Related Projects:

* [generator-website](https://github.com/cliffano/generator-website) - Website projects generator using Plop
