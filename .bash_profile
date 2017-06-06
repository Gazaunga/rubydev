#!/bin/bash

# Load generic login-shell configuration
    source ~/.profile

    # $PS1 will be set if this is an interactive shell
    if [ -n "$PS1" ]; then
        # It's an interactive shell, load interactve settings
        source ~/.bashrc
    fi

setxkbmap -option caps:swapescape
