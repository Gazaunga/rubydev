#!/bin/bash
source ~/rubydev/bin/utils/sh
e_success "Let's grab Ruby and ruby-docs"
pacaur -S --noconfirm --noedit ruby rbenv ruby-docs
e_success "Make sure rubygems are in your path!"
echo "PATH='$(ruby -e 'print Gem.user_dir')/bin:$PATH'" >> ~/.bashrc
echo "GEM_HOME=$(ls -t -U | ruby -e 'puts Gem.user_dir')" >> ~/.bashrc
echo "GEM_PATH=$GEM_HOME" >> ~/.bashrc
echo "export PATH=$PATH:$GEM_HOME/bin" >> ~/.bashrc
echo "export GEM_HOME=$(ruby -e 'print Gem.user_dir')" >> ~/.bashrc
touch ~/.gemrc
gem install bundler
gem install jekyll
gem install rake
gem install rails
gem install sinatra
gem install thin
gem install asciidoctor
gem install ruby-doc
gem update
git config --global user.name "Gazaunga"
git config --global user.email "jeremy.ottley@gmail.com"
git config --global core.autocrlf input
git config --global core.safecrlf true
sudo gem install --no-user-instal rails rake jekyll bundler
bundle install --path vendor/bundle 
sudo chmod +x ~/bin/fontstrap.sh
e_success "I think we're ready for some cool fonts now"
sh fontstrap.sh

