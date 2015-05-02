#!/bin/sh
##Install Sublime Text 3
sublime_text_file="$HOME/Downloads/sublime-text_build-3083_amd64.deb"
if [ -f "$sublime_text_file" ]; then
        echo "$sublime_text_file found"
else
        echo "$sublime_text_file not found"
        echo "Downloading Sublime-text file"

        wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb -P $HOME/
        sudo dpkg -i $HOME/sublime-text_build-3083_amd64.deb
        rm $HOME/sublime-text_build-3083_amd64.deb
fi

