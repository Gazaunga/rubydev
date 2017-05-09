#!/bin/bash
source ~/rubydev/bin/utils/sh
cd ~
mkdir .fonts
cd .fonts
e_success "Old School fonts"
wget http://int10h.org/oldschool-pc-fonts/download/ultimate_oldschool_pc_font_pack_v1.0.zip
unzip ultimate_oldschool_pc_font_pack_v1.0.zip
e_success "Fira fonts"
git clone https://github.com/tonsky/FiraCode.git
e_success "Tamzen fonts"
git clone https://github.com/sunaku/tamzen-font.git
e_success "Font Awesome!"
git clone https://github.com/FortAwesome/Font-Awesome.git
e_success "Some Google fonts"
pacaur -S --noconfirm --noedit ttf-hack ttf-google-fonts-git \
  ttf-ms-fonts \
  ttf-google-fonts-git \
  adobe-source-code-pro-fonts \
  ttf-ubuntu-font-family \
  noto-fonts-emoji \
  ttf-symbola \
  font-mathematica \
  ttf-mac-fonts \
fc-cache -fv
cd ~/rubydev
e_header "It's time to DEPLOY!"
bash deploy.sh
