# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS_INSTANCE_NAME=`hostname`

PS1='\n[\d, \t] \u\n\[\033[1;32m\]\w# \[\033[0m\]'

# User specific aliases and functions

alias ls='ls -G --color'
alias ll='ls -l'
alias la='ls -la'
alias grep='grep -n'
alias log='git log'
alias h='history'
alias hi='history | grep'
alias zip='zip -x "*.DS_Store" -x "*.svn"'

function mc { mkdir -p "$1" && cd "$1"; }
function g  { gvim "$1" & }

export -f mc

export EDITOR=vim
export HISTFILESIZE=5000

# Use vi on command line
set -o vi

# git completion
source ~/bin/git-completion.bash

# Config alias for dotfile management via git.
# See https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
