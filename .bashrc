#!/bin/bash

# Source global definitions
[ -f /etc/bashrc ] && source /etc/bashrc

[ -f ~/.bash_aliases ] && source ~/.bash_aliases

[ -f ~/.bash_env ] && source ~/.bash_env

[ -f ~/.bash_functions ] && source ~/.bash_functions

[ -f ~/bin/utils.sh ] && source ~/bin/utils.sh
[ -f ~/bin/gruvbox.xresources ] && source ~/bin/gruvbox.xresources

PS1="\[\e[0;1m\]┌─ \u@\[\e[1;34m\]\h\[\e[0;1m\]:\w\n└──● \[\e[0m\]"

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ "$TERM" = "screen" ]; then
    export TERM=screen-256color
fi

export XDG_CONFIG_HOME=$HOME/.config

# Auto-correct misspelled directories
shopt -s dirspell direxpand

# Check the window size after each command and, if necessary,
# Update the values of LINES and COLUMNS.
shopt -s checkwinsize

# The pattern "**" used in a pathname expansion context will
# Match all files and zero or more directories and subdirectories.
shopt -s globstar

# Extended pattern matching features are enabled
shopt -s extglob

# Include filenames beginning with a '.' in the results of pathname expansions
shopt -s dotglob

# Reclaim Ctrl-S and Ctrl-Q used for suspend/resume and use it for modern mapppings
stty -hupcl -ixon -ixoff
stty stop undef
stty susp undef

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
#Setting the GEM_PATH and GEM_HOME variables may not be necessary, check 'gem env' output to verify whether both variables already exist 
# GEM_HOME=$(ls -t -U | ruby -e 'puts Gem.user_dir')
 #GEM_PATH=$GEM_HOME
 #export PATH=$PATH:$GEM_HOME/bin
