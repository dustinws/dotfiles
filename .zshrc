# Oh My ZSH Config
# ----------------

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh


# NVM Initialization
# ------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# NIX Initialization
# ------------------

if [ -e /home/dustin/.nix-profile/etc/profile.d/nix.sh ]; then . /home/dustin/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer


# Direnv Initialization
# ---------------------

eval "$(direnv hook bash)"


# User Settings
# -------------

export TERM="xterm-256color" 


# Aliases
# -------

# Programs
alias vim="nvim"
alias c="clear"

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Git
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'  # 'status' is protected name so using 'stat' instead


# Path
# ----

export PATH=$PATH:/home/dustin/bin
export PATH=$PATH:/home/dustin/.local/bin



# Startup Commands
# ----------------

pfetch
motivate
