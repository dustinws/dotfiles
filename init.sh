#!/bin/bash

rm ~/.zshrc
rm ~/.tmux.conf

rm -rf ~/.config/nvim

echo "source ~/Dotfiles/zsh/zshrc" >> ~/.zshrc
echo "source ~/Dotfiles/tmux/tmux.conf" >> ~/.tmux.conf

mkdir -p ~/.config/nvim
ln -s ~/Dotfiles/nvim/init.vim ~/.config/nvim/init.vim
nvim +'PlugInstall --sync' +qa
