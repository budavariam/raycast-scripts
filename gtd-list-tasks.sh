#!/bin/bash

# Raycast Script Command Template
#
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title GTD List Tasks
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Raycast Scripts

# @raycast.argument1 { "type": "text", "placeholder": "limit - 50", "optional": true }

LIMIT=${1:-50}

tail -n "$LIMIT" ~/project/todolog/work/tasks.md
echo "...Showing last $LIMIT tasks..."