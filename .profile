# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# git completion and prompt, using what was installed by brew
source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash

# Set the prompt. Include git info.
PS1='\n[\d, \t] \[\033[1;32m\]\w\[\033[0m\]\n\u\[\033[33m\]$(__git_ps1)\[\033[00m\]# '

# User specific aliases and functions

alias ls='ls -GF'
alias ll='ls -l'
alias la='ls -la'
alias grep='grep -n'
alias st='git st'
alias log='git log'
alias h='history'
alias hi='history | grep'
alias zip='zip -x "*.DS_Store" -x "*.svn" -x "*.swp"'

# Git alias for working with dotfile repo from github
alias dot='/usr/local/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Mac stuff
alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias g='mvim'
alias mdiff='mvim -d'
alias show_dot_files='defaults write com.apple.finder AppleShowAllFiles TRUE' 
alias hide_dot_files='defaults write com.apple.finder AppleShowAllFiles FALSE'

# Launch node REPL with lodash pre-required
alias node_='node -e "const _ = require(\"lodash\");" -i'

# Clean up Javascript tags generated by ctags.
# See https://medium.com/adorableio/modern-javascript-ctags-configuration-199884dbcc1
alias jstags='ctags -R -f .tags && sed -i "" -E "/^\(if|switch|function|module\.exports|it|describe\).+language:js$/d" .tags'

# Some aliases for switching between Java 8 and Java 9.
alias usejava8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) ; PATH=$JAVA_HOME/bin:$PATH'
alias usejava9='export JAVA_HOME=$(/usr/libexec/java_home -v 1.9) ; PATH=$JAVA_HOME/bin:$PATH'

# Using Java 8 for now. Cordova builds look for Java 8.
usejava8

function mc { mkdir -p "$1" && cd "$1"; }
function fjs { find $1 -name "*.js" -or -name "*.vue"; }
export -f mc
export -f fjs

export EDITOR=vim
export HISTFILESIZE=5000

# Use vi on command line
set -o vi

# Android setup
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

# Gradle
export PATH=$PATH:$HOME/tools/gradle-4.5.1/bin

# Connection string for azure aopmturkstorkage account
export AZURE_STORAGE_CONNECTION_STRING="DefaultEndpointsProtocol=https;AccountName=aopmturkstorage;AccountKey=iHEpcW+sbxiE+S7iANN9Ykxk6TEFnkcti8iFB6YdWG+Ghxx14VYLchfPcCgirZuJQsfZPCvB4ON1FJrt7skTNw==;EndpointSuffix=core.windows.net"

# added by Anaconda3 5.2.0 installer
#export PATH="/anaconda3/bin:$PATH"

# added by Anaconda2 5.2.0 installer
#export PATH="/anaconda2/bin:$PATH"

# added by Anaconda3 5.2.0 installer
#export PATH="/Users/mike.mahoney/anaconda3/bin:$PATH"

export PATH=$PATH:$HOME/bin
