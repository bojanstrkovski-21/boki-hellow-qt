#!/bin/bash
#set -e
##################################################################################################################
# Author 	: 	dedSyn4ps3
# Website 	: 	https://www.nullreturn-it.com
# Github    :   https://github.com/dedSyn4ps3
##################################################################################################################
echo
tput setaf 3
echo "###############################################################################"
echo "#                     XeroLinux Application Installer                         #"
echo "#                                                                             #"
echo "#              Install everything you need, nothing you don't!                #"
echo "#                                                                             #"
echo "###############################################################################"
tput sgr0
echo


args=$1

sudo pacman-key --init && sudo pacman-key --populate ${args}

echo
echo
tput setaf 3
echo "#################################"
echo "#  Done! Press any key to exit  #"
echo "#################################"
tput sgr0
echo

read EXIT