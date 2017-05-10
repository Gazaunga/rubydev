#!/bin/bash

PATH=$PATH:$HOME/bin
TIMEFORMAT=%R

export EDITOR='rubymine'
export BROWSER='chromium'
export TERMINAL='terminator'
export FILEBROWSER='dolphin'

. ~/.bash_aliases
. ~/.bash_functions
. ~/bin/utils.sh

# remap shift-space to underscore for 60% keyboards
xmodmap -e 'keycode 65 = space underscore space'

