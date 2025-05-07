#!/usr/bin/bash

# sudo reflector --age 6 -f 30 -l 30 --sort score --save /etc/pacman.d/mirrorlist

# sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak 
# sudo reflector -c MK,BA,BG,GR,CZ,SK,SI,HU,AT,UA,TR,MD,RO,PL,IT,CH,DE,GB,NL,FR --age 6 -f 30 -l 30 --sort score --save /etc/pacman.d/mirrorlist
# paste this alis in your bashrc/config.fish/zshrc file and use it in the terminal: 
# alias update-mirrors="sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak | rate-arch-mirrors --entry-country SE | sudo tee /etc/pacman.d/mirrorlist"
sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak && rate-mirrors --allow-root --entry-country MK,BA,BG,GR,CZ,SK,SI,HU,AT,UA,TR,MD,RO,PL,IT,CH,DE,GB,NL,FR,SE,NO,FI --protocol https arch | sudo tee /etc/pacman.d/mirrorlist
sudo pacman -Sy
