#!/bin/sh

## Script to generate SSH for GitHub
ssh-keygen -t rsa -C "paulohtfs@gmail.com"

# Add your key to the ssh-agent
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_rsa
xclip -sel clip < $HOME/.ssh/id_rsa.pub

# Waiting for user to insert the key into github acount
echo "Insert the key on your Github setting and then press Enter"
read

# Testing connection
ssh -T git@github.com


