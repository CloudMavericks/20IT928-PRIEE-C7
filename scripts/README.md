# Scripts

This directory contains scripts that are used to setup code, build, and run the projects.

> **Tip**: You can directly invoke the scripts from your file explorer by double-clicking on them, with default parameters.

## Windows Batch Scripts

| Script | Description | Usage |
| ------ | ----------- | ---------- |
| `update_submodules.cmd` | Updates the submodules in the repository. | `.\update_submodules.cmd` |
| `build_backend.cmd` | Builds the backend project. | `.\build_backend.cmd --config=<config>` |
| `build_frontend.cmd` | Builds the frontend project. | `.\build_frontend.cmd --config=<config>` |
| `run_backend.cmd` | Builds and runs the backend project. | `.\run_backend.cmd --config=<config>` |
| `run_frontend.cmd` | Builds and runs the frontend project. | `.\run_frontend.cmd --config=<config>` |

### Parameters

| Parameter | Description | Default Value | Valid Values |
| --------- | ----------- | ------------- | ------------ |
| `--config` | The configuration to build the project with. | `Debug` | `Debug`, `Release` |

## Windows PowerShell Scripts

| Script | Description | Usage |
| ------ | ----------- | ---------- |
| `update_submodules.ps1` | Updates the submodules in the repository. | `.\update_submodules.ps1` |
| `build_backend.ps1` | Builds the backend project. | `.\build_backend.ps1 -Config <config>` |
| `build_frontend.ps1` | Builds the frontend project. | `.\build_frontend.ps1 -Config <config>` |
| `run_backend.ps1` | Builds and runs the backend project. | `.\run_backend.ps1 -Config <config>` |
| `run_frontend.ps1` | Builds and runs the frontend project. | `.\run_frontend.ps1 -Config <config>` |

### Parameters

| Parameter | Description | Default Value | Valid Values |
| --------- | ----------- | ------------- | ------------ |
| `-Config` | The configuration to build the project with. | `Debug` | `Debug`, `Release` |

## Linux/macOS Shell Scripts

| Script | Description | Usage |
| ------ | ----------- | ---------- |
| `update_submodules.sh` | Updates the submodules in the repository. | `./update_submodules.sh` |
| `build_backend.sh` | Builds the backend project. | `./build_backend.sh --config=<config>` |
| `run_backend.sh` | Builds and runs the backend project. | `./run_backend.sh --config=<config>` |

> **Note:** The frontend project is a Windows-only project and cannot be built or run on Linux/macOS.

### Parameters

| Parameter | Description | Default Value | Valid Values |
| --------- | ----------- | ------------- | ------------ |
| `--config` | The configuration to build the project with. | `Debug` | `Debug`, `Release` |