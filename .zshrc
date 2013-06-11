# Customize to your needs...
export PATH=~/bin:/usr/local/share/npm/bin:/usr/local/bin:$PATH

# Pythonbrew
export VIRTUAL_ENV_DISABLE_PROMPT=1
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
# VirtualEnvWrapper
pythonbrew venv use global

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
	bundler 
	gem 
	git 
	gitfast 
	git-flow 
	# git-hubflow 
	# github
	heroku 
	hub 
	node 
	npm 
	osx 
	pip 
	python 
	rails3 
	rake 
	rvm
)

source $ZSH/oh-my-zsh.sh

# AWS Command-Line Tools
export AWS_CREDENTIAL_FILE="/Users/bsedat/.AWS-Credentials"
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
export AWS_ELB_HOME="/usr/local/Library/LinkedKegs/elb-toolsjars"
export AWS_IAM_HOME="/usr/local/Library/LinkedKegs/aws-iam-tools/jars"
export AWS_CLOUDWATCH_HOME="/usr/local/Library/LinkedKegs/cloud-watch/jars"
export SERVICE_HOME="$AWS_CLOUDWATCH_HOME"
export AWS_AUTO_SCALING_HOME="/usr/local/Cellar/auto-scaling/1.0.49.1/jars"
# Export AWS Credentials to get AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
source $HOME/.AWS-Credentials-Export

NODE_PATH=/usr/local/lib/node_modules
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

eval "$(hub alias -s)"
