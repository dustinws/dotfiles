

# This instructs MacOS to not complain when it detects a shell other than
# 'zsh'. When Catalina was released, apple changed the default shell from bash
# to zsh, and it will verify that zsh is used whenever a terminal emulator is
# started and write a warning message if it is something else. Exporting This
# variable tells apple to shut up and not complain that I use bash.
# https://www.theverge.com/2019/6/4/18651872/apple-macos-catalina-zsh-bash-shell-replacement-features
export BASH_SILENCE_DEPRECATION_WARNING=1


# ---- Node Version Manager ---- #
# ------------------------------ #

# The nvm tool depends on this variable to know where to put node installations,
# global packages, and the npm cache.
export NVM_DIR="$HOME/.nvm"

# Load the nvm.sh script if it exists.
if [[ -f "$NVM_DIR/nvm.sh" ]]; then
	source "$NVM_DIR/nvm.sh"
else
	echo "nvm not loaded, unable to find nvm.sh"
fi


# ---- Bash Aliases ---- #
# ---------------------- #

alias lg="lazygit"
alias ldr="lazydocker"
alias ls=eza

alias tml="tmux list-sessions"
alias tma="tmux attach-session -t"
alias tmn="tmux new -s"

alias vimrc="nvim ~/dotfiles/.config/nvim/init.vim"

export PATH=$PATH:~/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.local/bin

PS1="(\[\033[01;34m\]\w\[\033[00m\]) \[\033[01;32m\]#\[\033[00m\] "

# ---- Zoxide Setup ---- #
# ---------------------- #

eval "$(zoxide init posix --hook prompt)"

pfetch
echo ""
echo ""
motivate
echo ""
echo ""
