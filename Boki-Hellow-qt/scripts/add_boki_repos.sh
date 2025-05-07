#!/bin/bash 

# Function to add a custom repository to pacman.conf 
add_repository() { 
repo_name="$1" 
repo_url="$2" 

echo -e "\n[${repo_name}]\nSigLevel = Optional TrustAll\nServer = ${repo_url}\n" | sudo tee -a /etc/pacman.conf } 

# Add your custom repositories here 
# Example: 
# add_repository "my_repo" "https://example.com/repo" 

# Uncomment and edit the lines below to add your custom repositories 
add_repository "shtrkce-repo" "https://bojanstrkovski-21.github.io/\$repo/\$arch" 
add_repository "shtrkce_repo_xl" "https://gitlab.com/bojanstrkovski-21/\$repo/-/raw/main/\$arch/" 
# add_repository "custom_repo_3" "https://custom_repo_3_url" 

# After adding the repositories, you may want to refresh the package database 

sudo pacman -Syy 