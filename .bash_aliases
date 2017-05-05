#!/bin/bash

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias httpsip='curl -s https://4.ifcfg.me/'

alias fuck="sudo !!"

alias brc='nvim ~/.bashrc'

alias bsu='source ~/.bashrc'

alias q='exit'

alias tree="tree -A"
alias treed="tree -d"
alias tree1="tree -d -L 1"
alias tree2="tree -d -L 2"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias exe='sudo chmod +x'

alias paste="curl -F 'sprunge=<-' http://sprunge.us"
alias make="clear && make"
alias shot="scrot ~/Screenshots/`date +%y-%m-%d-%H:%M:%S`.png"

alias path='echo $PATH | tr -s ":" "\n"'

alias psync='sudo pacman -Syy'

alias paco='sudo pacman -Sc && sudo pacman-optimize'

alias cp='cp -r'

alias home='cd ~/'

# This makes it so it will only get to use CPU and disk whenever nothing else is using it. In theory, this should make it so it 
alias makepkg='chrt --idle 0 ionice -c idle makepkg'

alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date' # Stopwatch

alias ya="yaourt  --nameonly --pager --color --noconfirm $1"

alias l="ls -o -hX --group-directories-first"
alias la="ls -o -AhX --group-directories-first"

alias texupdate='tlmgr update --all'

alias glog="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
