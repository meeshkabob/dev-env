##############################################################
# Aliases can be found in cd $ZSH_CUSTOM
##############################################################

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/XXX-my-username-XXX/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

DEFAULT_USER=`whoami`

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ssh-agent)


# Was seeing some warnings due to the installation being owned by the admin user
# [oh-my-zsh] Insecure completion-dependent directories detected
# Fix based on https://github.com/ohmyzsh/ohmyzsh/issues/9262
export ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


###############################
# Homebrew
###############################
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH



###############################
# Java
###############################
unset JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home -v 13.0.2)

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

###############################
# Searching
# https://github.com/cantino/mcfly
###############################
eval "$(mcfly init zsh)"

###############################
# XCode
# https://stackoverflow.com/a/71503876/11318496
###############################
# export SDKROOT=$(xcrun -sdk macosx --show-sdk-path)

###############################
# Devices
# Usage: ns debug ios --device $IOS_13 --no-hmr
###############################
# iPhone 13
export IOS_13=48EF7DE9-E8F4-4FC3-AF2F-14EA6DDF4D5A
# iPhone 13 Pro Max
export IOS_13_PRO_MAX=32BDA134-F11D-483C-AD30-7B052EF9187B


###############################
# Load and initialize pyenv
# https://docs.nativescript.org/environment-setup.html#macos-ios
###############################
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi



###############################
# Ruby
###############################
# export PATH=/opt/homebrew/lib/ruby/gems/2.7.0/bin:$PATH


# https://github.com/microsoft/vscode/issues/165225#issuecomment-1441278432
#ulimit -v $((50*1024*1024))
