# dotfiles
My linux configuration files.

## Content
- Exported settings `.backup/`
    - GNOME `gnome-settings`
- Shell
    - fish `.config/fish/`
    - bash `.bashrc`
- Scripts `.scripts/`
    - `auto-install.sh` for full installation
    - `backup.sh` to backup exported settings
    - `restore.sh` to restore exported settings
- Programs
    - i3 config `.i3/config`
    - Ranger `.config/ranger/`
    - vim  `.vimrc`
- Fonts `.fonts/`
    - Roboto
    - Roboto Mono

## How to install
**Clone and checkout the repository**
```sh
$ git clone --bare https://github.com/noahjutz/dotfiles $HOME/.cfg
$ git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
```
**Execute the auto-install script**
```sh
$ ~/.scripts/auto-install.sh
```

## Using
**Back up settings that aren't saved as dotfiles**
```sh
$ ~/.scripts/backup.sh
```

**Add files that are being tracked**
```sh
$ config add -u
```
[How to store dotfiles | Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)
