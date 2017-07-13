# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS_INSTANCE_NAME=`hostname`

PS1='\n[\d, \t] \u\n\[\033[1;32m\]\w# \[\033[0m\]'

# User specific aliases and functions

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -la'
alias grep='grep -n'
alias log='git log'
alias h='history'
alias hi='history | grep'
alias zip='zip -x "*.DS_Store" -x "*.svn"'

alias dotfile='~/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

function mc { mkdir -p "$1" && cd "$1"; }
function g  { gvim "$1" & }

# Mac stuff
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias py3='python3'
alias show_dot_files='defaults write com.apple.finder AppleShowAllFiles TRUE' 
alias hide_dot_files='defaults write com.apple.finder AppleShowAllFiles FALSE'
# Crazy aliases to switch between Java versions
alias usejava6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6) ; PATH=$JAVA_HOME/bin:$PATH'
alias usejava7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7) ; PATH=$JAVA_HOME/bin:$PATH'
alias usejava8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) ; PATH=$JAVA_HOME/bin:$PATH'

export -f mc

export EDITOR=vim
export HISTFILESIZE=5000

# Use vi on command line
set -o vi

# git completion
source ~/bin/git-completion.bash

# Setup Scala
export SCALA_HOME=~/scala
export PATH=$PATH:$SCALA_HOME/bin

# Path addition for gradle
export PATH=$PATH:~/tools/gradle/gradle/bin

# Config alias for dotfile management via git.
# See https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
