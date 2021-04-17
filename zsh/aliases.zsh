# Git Aliases
alias gch='git checkout'
alias gco='git commit'
alias gad='git add'
alias gl='git log'
alias gs='git status'
alias glp="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"

# Alias ctags to the one that was installed with brew
alias ctags="`brew --prefix`/bin/ctags"

# A shortcut to download a basic nodejs .gitignore file from github into the
# current directory.
alias node-git-ignore="wget -O .gitignore https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore"

# An alias to clear the screen
alias c="clear"

# NodeJS Shortcuts
alias t="npm test"
alias tw="npm test -- --watch"

# Alias tmux to use 256 colors
alias tmux='tmux -2'
