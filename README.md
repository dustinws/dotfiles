# Dotfiles

This repository contains all of the dotfiles for applications that I use on a
daily basis.

## Dependencies

In order to take full advantage of these dotfiles, it is expected that the
following things are installed on the system.

- [bash](https://www.gnu.org/software/bash)
- [stow](https://www.gnu.org/software/stow)
- [neovim](https://neovim.io)
- [nvm](https://github.com/nvm-sh/nvm)

## Cloning

You can run this in order to clone the repository.

```sh
git clone https://github.com/dustinws/dotfiles.git $HOME/dotfiles
```

## Setting Up

This project makes use of the GNU `stow` program, which manages groups of
symlinks. The default behavior of the application is mirror the directory
structure of the folder that is being stowed, but one level up in the
folder heirarchy.

Assuming that you did not modify the command in the [cloning](#cloning) step,
then the project should live at `$HOME/dotfiles`.

That means that you only need to run this command in order to create the links.

```sh
cd $HOME/dotfiles
stow .
```
