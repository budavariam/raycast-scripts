#!/bin/bash

# Raycast Script Command
#
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Today's TODO
# @raycast.mode silent
#
# Optional parameters:
# @raycast.icon 📔
# @raycast.packageName Raycast Scripts

pushd "${HOME}/project/todolog/" || exit 1
bash "today.sh"
popd || exit 1