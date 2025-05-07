#!/usr/bin/bash



if command -v alacritty &> /dev/null; then

     alacritty -e sudo pacman -Syyu
     
else

     echo "alacritty is not installed."

fi

# if command -v konsole &> /dev/null; then

#      konsole -e sudo pacman -Syyu

# else

#      echo "konsole is not installed."

# fi

# if command -v xterm &> /dev/null; then

#      xterm -e sudo pacman -Syyu

# else

#      echo "xterm is not installed."

# fi

# if command -v tilix &> /dev/null; then

#      tilix -e sudo pacman -Syyu

# else

#      echo "tilix is not installed."

# fi

# if command -v urxvt &> /dev/null; then

#      urxvt -e sudo pacman -Syyu

# else

#      echo "urxvt is not installed."

# fi

# if command -v wezterm &> /dev/null; then

#      wezterm -e sudo pacman -Syyu

# else

#      echo "wezterm is not installed."

# fi

# if command -v gnome-terminal &> /dev/null; then

#      gnome-terminal -- sudo pacman -Syu

# else

#      echo "gnome-terminal is not installed."

# fi

# if command -v xfce4-terminal &> /dev/null; then

#      xfce4-terminal --command 'sudo pacman -Syyu' #--hold
     
# else

#      echo "xfce4-terminal is not installed."

# fi