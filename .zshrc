export ZSH=~/.oh-my-zsh
eval "$(/opt/homebrew/bin/brew shellenv)"
# nodenv
eval "$(nodenv init - zsh)"
# export NODE_OPTIONS=--openssl-legacy-provider

ZSH_THEME="robbyrussell"

plugins=(git rails)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias zshrc='$EDITOR ~/.zshrc' # Quick access to the ~/.zshrc file

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
# Rails
alias be='bundle exec'

# Git
alias gs='git status'
alias gd='git diff'
alias gc='git checkout'
alias gp='git pull'
alias gpom='git pull origin master'
alias gh='git push'
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -D'
alias gsl='git stash list'
alias gnb='git checkout -b'
alias gm='git checkout master'

alias ghide='git update-index --skip-worktree'
alias gunhide='git update-index --no-skip-worktree'
alias ghidden='git ls-files -v . | grep ^S'

# Beautiful git branch
alias gba="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) | %(authorname) | (%(color:green)%(committerdate:relative)%(color:reset)) | %(contents:subject)' | column -t -s '|'"

# Docker
alias dps="docker ps -a"
alias dcr="docker compose run --rm"
alias dcu="docker compose up"
alias dcur="docker compose up rails"
# alias dsa="docker stop $(docker ps -a -q)"

# Global aliases
alias -g G='| grep'
alias -g H='| head'
alias -g T='| tail'
alias -g CP='| pbcopy'
alias -g L="| less"

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# asdf
. $(brew --prefix asdf)/libexec/asdf.sh
. ~/.asdf/plugins/golang/set-env.zsh

# google cloud sdk
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

