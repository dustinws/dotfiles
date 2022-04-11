#!/bin/bash

rm ~/.zshrc
rm ~/.tmux.conf

rm -rf ~/.config/kitty
rm -rf ~/.config/nvim

echo "source ~/dotfiles/.zshrc" >> ~/.zshrc
echo "source ~/dotfiles/.tmux.conf" >> ~/.tmux.conf

mkdir -p ~/.config/nvim
ln -s ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
nvim +'PlugInstall --sync' +qa

mkdir -p ~/.config/kitty
ln -s ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/.config/kitty/nord.conf ~/.config/kitty/nord.conf
