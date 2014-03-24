# Customize to your needs...
export PATH=~/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/sbin:$PATH

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bsedat"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
	brew 
	gem 
	bsedat-git
	git 
	gitfast 
	git-flow 
	golang
	heroku 
	knife
	node 
	npm 
	osx 
	pip 
	python 
	rails 
	rake 
	rbenv
	vagrant
)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim

source $HOME/.AWS-Credentials-Export

export NODE_PATH=/usr/local/lib/node_modules
export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
export ANDROID_HOME=/usr/local/opt/android-sdk

export DOCKER_HOST=tcp://

eval "$(rbenv init -)"

