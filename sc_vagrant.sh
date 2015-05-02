#!/bin/sh

## Install vagrant
vagrant_file="$HOME/Downloads/vagrant_1.7.2_x86_64.deb"
if [ -f "$vagrant_file" ]; then
        echo "$vagrant_file found"
else
        echo "$vagrant_file not found"
        echo "Downloading Vagrant file"

        wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb -P $HOME/Downloads
        sudo dpkg -i $vagrant_file
        rm $vagrant_file
fi
