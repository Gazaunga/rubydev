#!/bin/bash
source ~/rubydev/bin/utils.sh
# Functions #
# Create a new directory and enter it
mkd() { mkdir $1 && cd $1; }
##
e_success "Grabbing Xmonad"
sudo pacman -Syu --noconfirm --needed
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
pacaur -S --noconfirm --noedit xmonad xmonad-contrib xmobar dmenu scrot \
    cabal-install xcompmgr
sudo cabal update
cabal install --global yeganesh
e_success "Grabbing some useful programs"
pacaur -S --noconfirm --noedit emacs neovim python2-neovim python-neovim \
  rofi \
  oblogout \
  polybar \
  dolphin dolphin-plugins kompare kdegraphics-thumbnailers kdesdk-thumbnailers ffmpegthumbs raw-thumbnailer taglib kde-thumbnailer-epub \
  libreoffice \
  feh \
  smplayer smtube smplayer-themes smplayer-skins tree \
  howdoi \
  glances \
  openshot \
  leafpad \
  lxappearance \
  terminator \
  fontforge \
  krita \
  pandoc typora \
  xfce4-taskmanager \
  texlive-most \
  darktable \
  rubymine \
  okular \
  chromium \
  interrobang-git sublime-text \
  xbindkeys
e_success "Building Neovim"
curl -sLf https://spacevim.org/install.sh | bash
cd ~
touch .xbindkeysrc
mv -f .xmonad .xmonad.orig
git clone https://github.com/Gazaunga/xmonad-config.git .xmonad
e_success "Time to rubystrap!"
sh rubystrap.sh
