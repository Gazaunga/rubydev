#!/bin/sh
SHORTCUT="[Desktop Entry]
Name=RubyMine 6.3
Comment=Edit text files
Exec=/usr/local/ruby-mine/bin/rubymine.sh
Icon=/usr/local/ruby-mine/bin/RMlogo.svg
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Utility;TextEditor;Ruby;Development;"
SCRIPT="#!/bin/sh
if [ \${1} == \"--help\" ]; then
/usr/local/ruby-mine/bin/rubymine.sh --help
else
/usr/local/ruby-mine/bin/rubymine.sh \$@ > /dev/null 2>&1 &
fi"
 
curl -L "http://download.jetbrains.com/ruby/RubyMine-6.3.1.tar.gz" -o "/usr/src/RubyMine.tar.gz"
cd /usr/src
tar -zxvf "RubyMine.tar.gz"
cd "RubyMine-6.3.1"
mkdir -pv "/usr/local/ruby-mine"
mv -fv * "/usr/local/ruby-mine/"
echo "${SCRIPT}" > "/usr/local/bin/rubymine"
chmod +x "/usr/local/bin/rubymine"
echo "${SHORTCUT}" > "/usr/share/applications/ruby-mine.desktop"
 
echo "Finish!"
