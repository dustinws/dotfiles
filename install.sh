#!/bin/sh

# Install git
echo "Installing paru package manager"
mkdir Downloads
git clone https://aur.archlinux.org/paru.git Downloads/paru
cd Downloads/paru && makepkg -si

# Install aur deps
paru -Syu sway swaybg wofi neovim alacritty librewolf-bin ttf-monofur-nerd stow pfetch motivate zoxide cava eza unzip tmux rust go waybar ttf-font-awesome man-db nerd-fonts docker docker-compose htop battop lazygit lazydocker fzf ripgrep openssh ccid opensc pcscd yubico-authenticator-bin libnotify

# Configure Docker
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

# Configure CAC Reader
echo "enable_pinpad = false" >> /etc/opensc.conf
sudo systemctl enable pcscd.socket

# Install Node
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash'

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Symlink dotfiles into the correct places
mkdir ~/.config/alacritty
stow alacritty -t $HOME/.config/alacritty

mkdir ~/.config/cava
stow cava -t $HOME/.config/cava

mkdir ~/.config/sway
stow sway -t $HOME/.config/sway

mkdir ~/.config/nvim
stow nvim -t $HOME/.config/nvim

mkdir ~/.config/waybar
stow waybar -t $HOME/.config/waybar

mkdir ~/.config/wofi
stow wofi -t $HOME/.config/wofi

stow tmux -t $HOME
stow bash -t $HOME
