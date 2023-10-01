# Dotfiles

Config files for my shell environment:

1. bash
2. fiish
3. tmux
4. git
5. npm

Ideally the config should work under Windows (WSL, git-bash), Linux, MacOS.

Trying to rely more on existing tools this time to reduce customization in config files.


## Dependencies

- [neovim](https://neovim.io/)
- [Starship](https://starship.rs/)
- [Oh my tmux!](https://github.com/gpakosz/.tmux) (as a submodule)
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard) (for Wayland DE)

## Installation

```
bash install.sh
```

**NOTE** that this is destructive, as it will delete current configs presented in `$HOME`. Review the script before running.

Add

```sh
source ~/dotfiles/.bashrc
```
To existing `.bashrc` or `.bash_profile` (MacOS)
