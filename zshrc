export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git rails)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

alias zshrc='$EDITOR ~/.zshrc' # Quick access to the ~/.zshrc file

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias ctags="/usr/local/bin/ctags"

#Rails
alias sa='bin/rake spec:all'

# Git
alias gs='git status'
alias gd='git diff'
alias go='git checkout'
alias gp='git pull'
alias gpom='git pull origin master'
alias gh='git push'
alias gc='git commit'
alias ga='git add'
alias gb='git branch'
alias gsl='git stash list'

# Global aliases
alias -g G='| grep'
alias -g H='| head'
alias -g T='| tail'
alias -g CP='| pbcopy'
alias -g L="| less"

# Beautiful git branch
alias gba="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) | %(authorname) | (%(color:green)%(committerdate:relative)%(color:reset)) | %(contents:subject)' | column -t -s '|'"

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

google() {
  if [ $2 ] ; then
    git grep -n $1 $2
  else
    git grep -n $1 '.'
  fi
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Tuning Ruby
export RUBY_GC_MALLOC_LIMIT=90000000
