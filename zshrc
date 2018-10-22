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
alias ct='ctags -R --languages=ruby,lisp --exclude=.git --exclude=log --exclude=target --langmap=Lisp:+.cljs .'

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
alias gbd='git branch -D'
alias gsl='git stash list'
alias gsu='git submodule update'

# Search
alias ag="ag -Qi"

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

# HB: download and restore production DB
fetchdb () {
    ssh delta.halalbooking.com /usr/local/opt/misc/pgdump_halalbooking.sh > hb.dump && pkill -9 puma ruby && dropdb hb_prod && createdb hb_prod && pg_restore --no-owner -d hb_prod hb.dump && psql hb_prod -c 'update users set otp_enabled = false where otp_enabled; insert into roles_users values (1, 406);' && dropdb hb_prod-copy && createdb hb_prod-copy -T hb_prod && rm hb.dump
}

# HB: drop current and replace with copy of DB
restoredb () {
    pkill -9 puma ruby && dropdb hb_prod && createdb hb_prod -T hb_prod-copy
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
eval "$(rbenv init -)"
