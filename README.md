# dotfiles
My linux configuration files.

## Starting from scratch
```bash
$ git init --bare $HOME/.cfg
$ alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
$ config config --local status.showUntrackedFiles no
$ echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

## Migtating
```sh
$ git clone --bare https://github.com/noahjutz/dotfiles $HOME/.cfg
$ /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
$ ~/.scripts/auto-install.sh
```

## Using
```sh
# To add all files that are already being tracked:
$ config add -u
```
[How to store dotfiles | Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)
