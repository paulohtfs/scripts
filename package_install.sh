#!/bin/sh
# Script created to install basic enviroment for development

# Upgrade and Update Packeges
sudo apt-get update -y
sudo apt-get upgrade -y

# All main programs packages
sudo apt-get -f install -y
sudo apt-get install -y 		\
	git				\
	vim				\
	g++				\
	openjdk-7-jre			\
	openjdk-7-jdk			\
	xclip				\
	texlive-full	\
	virtualbox			

