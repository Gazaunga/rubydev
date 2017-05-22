#!/usr/bin/env bash
source ~/rubydev/bin/utils.sh
set -e

# Source: https://gist.github.com/davejamesmiller/1965569
ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}

dir=`pwd`
e_header "A few questions to finish up..."
if ask "Install symlink for .xinitrc?" Y; then
  ln -sf ${dir}/.xinitrc ${HOME}/.xinitrc
fi

if ask "Install symlink for .screenrc?" Y; then
  ln -sf ${dir}/.screenrc ${HOME}/.screenrc
fi

if ask "Install symlink for .profile?" Y; then
  ln -sf ${dir}/.profile ${HOME}/.profile
fi

if ask "Install symlink for .lesskey?" Y; then
  ln -sf ${dir}/.lesskey ${HOME}/.lesskey
fi

if ask "Install symlink for .interrobangrc?" Y; then
  ln -sf ${dir}/.interrobangrc ${HOME}/.interrobangrc
fi

if ask "Install symlink for .editorconfig?" Y; then
  ln -sf ${dir}/.editorconfig ${HOME}/.editorconfig
fi

if ask "Install symlink for .bashrc?" Y; then
  ln -sfn ${dir}/.bashrc ${HOME}/.bashrc
fi

if ask "Install symlink for .bash_profile?" Y; then
  ln -sfn ${dir}/.bash_profile ${HOME}/.bash_profile
fi

if ask "Install symlink for .bash_aliases?" Y; then
  ln -sf ${dir}/.bash_aliases ${HOME}/.bash_aliases
fi

if ask "Install symlink for .bash_functions?" Y; then
  ln -sfn ${dir}/.bash_functions ${HOME}/.bash_functions
fi

if ask "Install symlink for .Xmodmap?" Y; then
  ln -sfn ${dir}/.Xmodmap ${HOME}/.Xmodmap
fi

if ask "Install symlink for terminator?" Y; then
  ln -sfn ${dir}/terminator ${HOME}/terminator
fi

if ask "Install symlink for rofi?" Y; then
  ln -sfn ${dir}/rofi ${HOME}/rofi
fi

if ask "Install symlink for bin?" Y; then
  ln -sfn ${dir}/bin ${HOME}/bin
fi

if ask "Install symlink for screen service?" Y; then
  ln -sfn ${dir}/etc/systemd/system/screen@.service /etc/systemd/system/screen@.service
fi
mv -f wal.jpg ~/wal.jpg

