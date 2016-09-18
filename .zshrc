# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment following line if you want to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

export EDITOR=vim

source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then
    zgen oh-my-zsh
    zgen load zsh-users/zsh-completions src
    zgen load bsedat/zsh-theme bsedat.zsh-theme
    zgen load bsedat/ec2-scripts src/ec2.sh
    zgen load asdf-vm/asdf asdf.sh
    zgen load /usr/local/share/zsh/site-functions
    zgen save
fi

source "${HOME}/.zgen/asdf-vm/asdf-master/completions/asdf.bash"

if [ -f "$(which direnv)" ]; then
    eval "$(direnv hook zsh)"
fi

export PATH=./bin:./.bundle/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH

if (){ setopt localoptions nonomatch nocshnullglob; [ -f $HOME/.*-credentials-export([1]) ] }; then
    for file in $HOME/.*-credentials-export; do
        source "$file"
    done
fi

export GOPATH=$HOME/go-workspace
export PATH=$GOPATH/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home)

alias gcm='git checkout master'
alias mixc='iex -S mix'
alias be='bundle exec'
alias bi="bundle install --binstubs .bundle/bin --path .bundle/vendor --jobs 4"

# Docker
dmenv () { eval "$(docker-machine env $1)"; }

