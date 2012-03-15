# VirtualEnvWrapper
source /usr/local/bin/virtualenvwrapper.sh
[[ -e "$HOME/.virtualenvs/work" ]] && workon work
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Invoke RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

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
plugins=(git macports brew osx vagrant textmate heroku rvm gem python pip)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH

# AWS Command-Line Tools
export AWS_CREDENTIAL_FILE="/Users/bsedat/.AWS-Credentials"
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.5.2.4/jars"
export AWS_ELB_HOME="/usr/local/Cellar/elb-tools/1.0.15.1/jars"
export AWS_IAM_HOME="/usr/local/Cellar/aws-iam-tools/HEAD/jars"
# Export AWS Credentials to get AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY 
source $HOME/.AWS-Credentials-Export

alias vup="pushd ~/Vagrant && vagrant up && vagrant ssh; popd"
alias vdown="pushd ~/Vagrant && vagrant suspend && popd"
alias vstart="pushd ~/Vagrant && vagrant reload && vagrant ssh && popd"

