#!/bin/bash

window=$(hyprctl activewindow -j | jq -r '.class')

if [ $window == 'kitty' ]; then
  echo "Kitty"
else 
  if [ $window == 'null' ]; then
    echo ""
  else
    echo $window
  fi
fi

