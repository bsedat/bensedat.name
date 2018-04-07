# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

export EDITOR=vim

export PATH=$HOME/bin:$HOME/.yarn/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH

export ZPLUG_HOME=/usr/local/opt/zplug
if [ -d "$ZPLUG_HOME" ]; then
    source $ZPLUG_HOME/init.zsh

    zplug "zsh-users/zsh-history-substring-search"
    zplug "zsh-users/zsh-autosuggestions"
    zplug "zsh-users/zsh-syntax-highlighting", defer:2
    zplug "zsh-users/zsh-completions"
    zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme
    zplug "bsedat/ec2-scripts", as:command, use:"bin/(*)"
    zplug "/usr/local/share/zsh/site-functions", from:local

    zplug "sorin-ionescu/prezto"
    zplug "modules/utility", from:prezto
    zstyle ':prezto:module:utility:ls' color 'yes'
    zplug "modules/history", from:prezto
    zplug "modules/terminal", from:prezto
    zstyle ':prezto:module:terminal' auto-title 'yes'
    zplug "modules/editor", from:prezto

    if ! zplug check --verbose; then
        printf "Install? [y/N]: "
        if read -q; then
            echo; zplug install
        fi
    fi
    
    zplug load
fi

export HOMEBREW_NO_AUTO_UPDATE=1

# asdf
source /usr/local/opt/asdf/asdf.sh
source /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# Spaceship theme config
export SPACESHIP_PACKAGE_SHOW=false
export SPACESHIP_DOCKER_SHOW=false
export SPACESHIP_BATTERY_SHOW=false
export SPACESHIP_KUBECONTEXT_SHOW=false

export PATH=./bin:./.bundle/bin:$PATH

if [ -f "$(which direnv)" ]; then
    eval "$(direnv hook zsh)"
fi

if (){ setopt localoptions nonomatch nocshnullglob; [ -f $HOME/.*-credentials-export([1]) ] }; then
    for file in $HOME/.*-credentials-export; do
        source "$file"
    done
fi

export GOPATH=$HOME/go-workspace
export PATH=$GOPATH/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home)

# Fix NPM to be able to use asdf stubs
export NPM_CONFIG_PREFIX=/usr/local

export ERL_AFLAGS="-kernel shell_history enabled"

export VAGRANT_DEFAULT_PROVIDER=virtualbox

alias gcm='git checkout master'
alias mixc='iex -S mix'
alias be='bundle exec'
alias foreman='noglob foreman'
alias rspec='noglob rspec'
