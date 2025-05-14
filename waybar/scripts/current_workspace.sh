#!/bin/bash

ws=$(hyprctl monitors -j | jq -r '. | .activeWorkspace.name')

echo $ws

