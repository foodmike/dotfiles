# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

~/.gitstuff/.git-prompt.sh

# git completion
source ~/bin/git-completion.bash

export PS_INSTANCE_NAME=`hostname`

PS1='\n[\d, \t] \u\n\[\033[1;32m\]\w# \[\033[0m\]'
#PS1='\n[\d, \t] \[\033[1;32m\]\w\[\033[0m\]\n\u\[\033[33m\]$(__git_ps1)\[\033[00m\]# '

# User specific aliases and functions

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -la'
alias grep='grep -n'
alias log='git log'
alias h='history'
alias hi='history | grep'
alias zip='zip -x "*.DS_Store" -x "*.svn"'

alias dot='/usr/local/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Mac stuff
alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias g='mvim'
alias show_dot_files='defaults write com.apple.finder AppleShowAllFiles TRUE' 
alias hide_dot_files='defaults write com.apple.finder AppleShowAllFiles FALSE'

function mc { mkdir -p "$1" && cd "$1"; }
export -f mc

export EDITOR=vim
export HISTFILESIZE=5000

# Use vi on command line
set -o vi

