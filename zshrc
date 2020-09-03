export ZSH=~/.oh-my-zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

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
alias ct='ctags -R --languages=ruby,lisp --exclude=.git --exclude=log --exclude=target --langmap=Lisp:+.cljs .'
# Rails
alias be='bundle exec'

# Git
alias gs='git status'
alias gd='git diff'
alias gc='git checkout'
alias gp='git pull'
alias gpom='git pull origin master'
alias 3c_prepare='bundle install --quiet && yarn install --silent && bin/rails db:migrate && gc db/structure.sql'
alias gh='git push'
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -D'
alias gsl='git stash list'
alias gsu='git submodule update'
alias gnb='git checkout -b'
alias gm='git checkout master'

# Docker
alias dps="docker ps -a"
alias dcr="docker-compose run --rm"
alias dcu="docker-compose up"
alias dcur="docker-compose up rails"
alias dsa="docker stop $(docker ps -a -q)"

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

port_forward () {
  echo "\nrdr pass inet proto tcp from any to any port 80 -> 0.0.0.0 port $1 \n" | sudo pfctl -ef -
}

clean_port_forwarding () {
  sudo pfctl -F all -f /etc/pf.conf
}

docker_start () {
  if ! $(docker info > /dev/null 2>&1); then
    echo "Opening Docker for Mac..."
    open -a /Applications/Docker.app
    while ! docker system info > /dev/null 2>&1; do sleep 1; done
    echo "Docker is ready to rock!"
  else
    echo "Docker is up and running."
  fi
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/sbin:$PATH"

# asdf
. $(brew --prefix asdf)/asdf.sh
# . ~/.asdf/plugins/java/set-java-home.sh

