# Suppress Bash warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Avoid forking issues on Apple silicon
export DISABLE_SPRING=true

# ENV
export EDITOR=vi

# Aliases
alias gg='git grep -I --break --heading --show-function --untracked'
alias ll='ls -alFG'

# Maintain PATH ordering in tmux
if [ -x /usr/libexec/path_helper ]; then
  PATH=""
  eval "$(/usr/libexec/path_helper -s)"
fi

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rbenv
eval "$(rbenv init -)"

# Binstubs
export PATH=".git/safe/../../bin:${PATH}"

# User scripts
export PATH="${HOME}/.bin:${PATH}"

# Bash completion
source "$(brew --prefix)/etc/bash_completion"

# PS1
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\W$(__git_ps1 " (%s)")\$ '
