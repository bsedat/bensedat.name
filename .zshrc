# Customize to your needs...
export PATH=~/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/sbin:/sbin:$PATH

source $HOME/.antigen/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
	brew
	gem
	git
	golang
	heroku
	knife
	npm
	osx
	pip
	rails
	rake
	rbenv
EOBUNDLES
antigen theme bsedat/zsh-theme bsedat
antigen apply

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

source $HOME/.AWS-Credentials-Export

export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
export NODE_PATH=/usr/local/lib/node_modules

export DOCKER_HOST=tcp://

# RBENV
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

