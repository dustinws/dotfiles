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


# User Settings
# -------------

export TERM="xterm-256color" 


# Aliases
# -------

# Programs
alias vim="nvim"
alias c="clear"

# Changing "ls" to "exa"
alias la='exa -al --color=always --group-directories-first' # my preferred listing
alias ls='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Changing "cat" to "bat"
alias cat="bat"

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

# Tmux
alias tml="tmux list-sessions"
alias tma="tmux attach-session -t"
alias tmn="tmux new -s"


# Path
# ----

export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin
export IHP_EDITOR="code --goto"

if [[ "$OSTYPE" == "darwin"* ]]; then
  export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$PATH:/usr/local/lib/python3.9/site-packages
  export PATH=$PATH:$ANDROID_HOME/emulator:$PATH
  export PATH=$PATH:$ANDROID_HOME/tools:$PATH
  export PATH=$PATH:$ANDROID_HOME/tools/bin:$PATH
  export PATH=$PATH:$ANDROID_HOME/platform-tools:$PATH
  export JAVA_HOME=$(/usr/libexec/java_home)
fi



# Linux Homebrew
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
  test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile
  echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile
fi


# Direnv Initialization
# ---------------------

eval "$(direnv hook zsh)"


# Python Anaconda
# ---------------

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


alias python="/opt/anaconda3/bin/python"

