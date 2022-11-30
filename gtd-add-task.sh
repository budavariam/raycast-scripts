#!/bin/bash

# Raycast Script Command Template
#
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title GTD Add Task
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Raycast Scripts

# @raycast.argument1 { "type": "text", "placeholder": "who" }
# @raycast.argument2 { "type": "text", "placeholder": "what", "optional": false }

CURR_TIME=$(date -u +"%Y-%m-%d %H:%M:%S" )
WHO=${1}
WHAT=${2}

echo "- [ ] ${WHO} - ${WHAT} (${CURR_TIME})" >> ~/project/todolog/work/tasks.md

osascript <<EOF
display notification "${WHO} - ${WHAT}" with title "Task added!"
EOF