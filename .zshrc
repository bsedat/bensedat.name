# Customize to your needs...
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH

source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then
    zgen oh-my-zsh
    zgen load zsh-users/zsh-completions src
    zgen load bsedat/zsh-theme bsedat.zsh-theme

    zgen save
fi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

export EDITOR=vim

source $HOME/.aws-credentials-export
source $HOME/.github-credentials-export
source $HOME/.hipchat-credentials-export
source $HOME/.digitalocean-credentials-export

export JAVA_HOME="$(/usr/libexec/java_home)"
export NODE_PATH=/usr/local/lib/node_modules

alias gcm='git checkout master'

# Docker
alias dgci='docker rmi $(docker images -q -f dangling=true)'
alias dgcc='docker rm $(docker ps -aq -f status=exited)'
dmenv () { eval "$(docker-machine env $1)"; }

# RBENV
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"
alias bi="bundle install --binstubs .bundle/bin --jobs 4 && rbenv rehash"
