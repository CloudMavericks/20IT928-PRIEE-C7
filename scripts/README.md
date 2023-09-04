# Scripts

This directory contains scripts that are used to setup code, build, and run the projects.

## Windows Batch Scripts

| Script | Description | Usage |
| ------ | ----------- | ---------- |
| `update_submodules.cmd` | Updates the submodules in the repository. | `.\update_submodules.cmd` |
| `build_backend.cmd` | Builds the project. | `.\build_backend.cmd --config=<config>` |
| `run_backend.cmd` | Builds and runs the project. | `.\run_backend.cmd --config=<config> --launch-profile=<launch-profile>` |

### Parameters

| Parameter | Description | Default Value | Valid Values |
| --------- | ----------- | ------------- | ------------ |
| `--config` | The configuration to build the project with. | `Debug` | `Debug`, `Release` |
| `--launch-profile` | The launch profile to run the project with. | `Kestrel` | `Kestrel`, `IIS Express` |

## Windows PowerShell Scripts

| Script | Description | Usage |
| ------ | ----------- | ---------- |
| `update_submodules.ps1` | Updates the submodules in the repository. | `.\update_submodules.ps1` |
| `build_backend.ps1` | Builds the project. | `.\build_backend.ps1 -Config <config>` |
| `run_backend.ps1` | Builds and runs the project. | `.\run_backend.ps1 -Config <config> -LaunchProfile <launch-profile>` |

### Parameters

| Parameter | Description | Default Value | Valid Values |
| --------- | ----------- | ------------- | ------------ |
| `-Config` | The configuration to build the project with. | `Debug` | `Debug`, `Release` |
| `-LaunchProfile` | The launch profile to run the project with. | `Kestrel` | `Kestrel`, `IIS Express` |

## Linux/macOS Shell Scripts

| Script | Description | Usage |
| ------ | ----------- | ---------- |
| `update_submodules.sh` | Updates the submodules in the repository. | `./update_submodules.sh` |
| `build_backend.sh` | Builds the project. | `./build_backend.sh --config=<config>` |
| `run_backend.sh` | Builds and runs the project. | `./run_backend.sh --config=<config> --launch-profile=<launch-profile>` |

### Parameters

| Parameter | Description | Default Value | Valid Values |
| --------- | ----------- | ------------- | ------------ |
| `--config` | The configuration to build the project with. | `Debug` | `Debug`, `Release` |
| `--launch-profile` | The launch profile to run the project with. | `Kestrel` | `Kestrel`, `IIS Express` |