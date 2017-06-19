###### development tools
sudo apt-get install build-essential python-dev git nodejs-legacy npm gnome-tweak-tool openjdk-8-jdk

### Python packages
sudo apt-get install python-pip python-virtualenv python-numpy python-matplotlib

### pip packages

pip install django flask django-widget-tweaks django-ckeditor beautifulsoup4 requests classifier SymPy ipython

### parallel processing

sudo apt-get install libibnetdisc-dev
wget https://www.open-mpi.org/software/ompi/v1.10/downloads/openmpi-1.10.2.tar.gz
tar -xzvf openmpi-1.10.2.tar.gz
./configure --prefix="~/.openmpi"
make -j4
sudo make install

export PATH="$PATH:$HOME/.openmpi/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/.openmpi/lib/"


#### Compiler Design  ##########
apt-get install flex bison

##### Networking tools  ########
apt-get install libpcap-dev libnet1-dev rpcbind openssh-server

###### Image processing OpenCV  #####
cd
git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git
sudo apt-get install cmake pkg-config libjpeg8-dev libtiff-dev libjasper-dev libpng12-dev libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libatlas-base-dev gfortran libopencv-dev build-essential checkinstall cmake pkg-config yasm libtiff5-dev libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev libqt4-dev libgtk2.0-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils ffmpeg libgphoto2-dev

cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..

make -j4
sudo make install
sudo ldconfig

#### android tools #####
sudo apt-get install android-tools-adb android-tools-fastboot

##### media tools #######

apt-get install flashplugin-installer vlc

##### editor
apt-get install vim
sublime and atom (sudo dpkg -i file.deb)

##### Security tools
sudo apt-get install nmap

##### Customize 
#### Install zsh
sudo apt-get install zsh

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

chsh -s `which zsh`

##### Web Development
sudo apt-get install apache2 apache2-utils libapache2-mod-php
sudo apt-get install php php-mcrypt php-mysql php-mbstring php-dom

#### Ruby Install
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

export PATH="$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

rbenv install 2.4.1
rbenv global 2.4.1

gem install bundler
gem install jekyll mysql2 rails jekyll-pagedown

## Database
sudo apt-get install mongodb
sudo apt-get install libsqlite3-dev
sudo apt-get install mysql-server libmysqlclient-dev

#### C/C++ advance tools
sudoa apt-get install autoconf automake

### Node, Python and PHP Packages
PHP composer- slimphp/slim, laravel/laravel
npm- sudo npm install -g grunt-cli bower express-generator, npm install express socket.io pug mongoose passport.js bcrypt-nodejs 

## Web Dev ASP.NET

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update

# install mono libraries
sudo apt-get install mono-devel mono-complete referenceassemblies-pcl ca-certificates-mono mono-xsp4
# install mono ide
sudo apt-get install monodevelop-nunit monodevelop-versioncontrol monodevelop-database

#### Machine Learning
sudo apt-get install python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
pip install -U scikit-learn
#### CLoud Storage(dropbox)
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
