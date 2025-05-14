#!/bin/bash
# current_workspace.sh

current_ws=$(hyprctl activeworkspace -j | jq -r '.name')

echo $current_ws
