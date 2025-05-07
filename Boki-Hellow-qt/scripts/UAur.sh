#!/usr/bin/bash



if command -v alacritty &> /dev/null; then

     alacritty -e yay -Syyu
     
else

     echo "alacritty is not installed."

fi

# if command -v konsole &> /dev/null; then

#      konsole -e yay -Syyu

# else

#      echo "konsole is not installed."

# fi

# if command -v xterm &> /dev/null; then

#      xterm -e yay -Syyu

# else

#      echo "xterm is not installed."

# fi

# if command -v tilix &> /dev/null; then

#      tilix -e yay -Syyu

# else

#      echo "tilix is not installed."

# fi

# if command -v urxvt &> /dev/null; then

#      urxvt -e yay -Syyu

# else

#      echo "urxvt is not installed."

# fi

# if command -v wezterm &> /dev/null; then

#      wezterm -e yay -Syyu

# else

#      echo "wezterm is not installed."

# fi

# if command -v gnome-terminal &> /dev/null; then

#      gnome-terminal -- yay -Syu

# else

#      echo "gnome-terminal is not installed."

# fi

# if command -v xfce4-terminal &> /dev/null; then

#      xfce4-terminal --command 'yay -Syyu' #--hold
     
# else

#      echo "xfce4-terminal is not installed."

# fi