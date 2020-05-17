# dotfiles
My linux configuration files.

## How to install
**Clone and checkout the repository**
```sh
$ git clone --bare https://github.com/noahjutz/dotfiles $HOME/.cfg
$ /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
```
**Execute the auto-install script**
```sh
$ ~/.scripts/auto-install.sh
```

## Using
**Backing up**
```sh
$ ~/.scripts/backup.sh
```

**Add files that are being tracked**
```sh
$ config add -u
```
[How to store dotfiles | Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)
