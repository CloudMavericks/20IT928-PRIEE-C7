# 20IT928-PRIEE-C7

This is the base repository which contains the necessary files and documents for the project _Inventory Management System for retailers_. The source code is present as a submodule in the `Velocity` folder. The submodule repository can be found [here](https://github.com/CloudMavericks/Velocity.git).

Project CodeName: _Velocity_

Project Domain: _Cloud Computing_

Project Description: _Inventory Management System for retailers_

## Team Members

| S.No | Name                | College Registration No |
|------|---------------------|-------------------------| 
| 1    | Sathiyaraman M      | 111720102140            |
| 2    | Sudharsan S V       | 111720102129            |
| 3    | Sairam J            | 111720102133            |
| 4    | Shree Ranganathan S | 111720102310            |


## How to clone this repository

Open a terminal and run the following command at your desired location:

```bash
git clone --recursive https://github.com/CloudMavericks/20IT928-PRIEE-C7.git
```

This will clone the repository along with all the submodules.

> Note: If you have already cloned the repository without the `--recursive` flag, then run the `update_submodules.sh` (for Linux/macOS) or `update_submodules.cmd` (Windows - Command Prompt) or `update_submodules.ps1` (for Windows - Powershell) script from the `scripts` folder to clone the submodules. 

> Alternatively you can run the following command from the root of the repository to clone all the submodules.
```bash
git submodule update --init --recursive
```

## Deliverables

- Abstract Presentation [Link](files/PRIEE_Abstract.pdf)

## Note

- Please do not push any code to this repository directly.
- To work on the source code, work on the code at **_Velocity_** repository. The latest commits from the submodule will be pulled automatically to this repository via GitHub Actions.
- No pull requests will be accepted to this repository.