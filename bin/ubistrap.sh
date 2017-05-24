#!/bin/bash

sudo apt-get -y --allow-unauthenticated update
sudo apt-get -y install build-essential libpq-dev nodejs
wget -O ruby-install-0.6.0.tar.gz \
  https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz
tar -xzvf ruby-install-0.6.0.tar.gz
cd ruby-install-0.6.0/
sudo make install
ruby-install --latest ruby 2.4.0
wget -O chruby-0.3.9.tar.gz \
  https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
cat >> ~/.$(basename $SHELL)rc <<EOF
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
EOF
exec $SHELL
cd ~
touch .ruby-version
cat "ruby-2.4.0" >> ~/.ruby-version
gem install rails -v 5.0.1
