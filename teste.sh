#!/bin/sh

var="^PS1='\${debian_chroot:"
var2="PS1='\${debian_chroqqqqot:ner"
sed -i "s/$var/$var2" teste.txt
