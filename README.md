# AutoGit

AutoGit is a shell script that automates the process of executing Git commands to add, commit, and push changes to a Git repository.

## Requirements
Meeting these requirements ensures that AutoGit works smoothly on your system.
1. Linux or Unix-like system: AutoGit is designed to run on any Linux or Unix-like system including macOS and several Linux distros not limited to Ubuntu, Kali Linux, centOS, Debian, etc. For Windows users, you can consider alternative means of getting Linux/Unix system and/or environment on your machine but using WSL which simplifies the process is highly recommended though only availble for recent versions of Windows 10 and totally supported on Windows 11. Check out [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).
2. Git: AutoGit automates basic Git commands, therefore you must have Git installed on your system. Run `git --version` from your command line to confirm installation. If not already installed, kindly install it from the [oificial Git website](https://git-scm.com).
3. Bash Shell: AutoGit is a shell script written in Bash. Ensure that bash is available on your system. Most Linux distros come with Bash pre-installed.
4. Internet connectivity: AutoGit requires an internet connection to interact with remote Git repositories, such as pushing changes to a remote origin.
5. Permissions: Make sure that you have the necessary permissions to execute scripts (`chmod u+x autogit/install.sh`) and access the Git repository you are working with.

## Installation

1. Clone the repository: `git clone https://github.com/OxOneBeing/autogit.git`

2. Change directory to the `autogit` directory. Run `cd ./autogit`.

3. Run `./install.sh` from a bash command line. Note: You might want to run this using SuperUser privileges (i.e sudo `./install.sh`).

4. `autogit`is now installed and globally accessible.

## Usage

To use `autogit`, run the script with the commit message as the argument:
E.g. `autogit "Updated 'README.md' file."` . This is with an assumption that you're pushing the remote `origin` to `main`.


Extensibly, you could specify a different remote and branch by including them as two further arguments.
Example: `autogit "Initialized a dev branch!" devRemote devBranch` . Note that if you're specifying a remote, you MUST specify a branch.

### Options

- `-v` or `--version`: Print the version of AutoGit.
- Run `man autogit` after installation to display the manual pages.

## License

This project is licensed under the [MIT License](LICENSE) - Coming Soon.

## Acknowledgements

- AutoGit was inspired by the need for an automated Git workflow and relative ease as a lot would be done with just one line of code.
- Thanks to [Sunday](https://twitter.com/0xOneBeing) and the contributors & supporters of the project.
