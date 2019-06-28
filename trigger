#!/bin/bash

triggerDir=~/.trigger-await
triggerName=$1

mkdir -p $triggerDir

# Update the modified time of the trigger file. This will be picked up by `await`
touch $triggerDir/$triggerName


notificationMessage="$triggerName triggered"

# Show message in shell
echo "$notificationMessage"

# Show notifications in mac
osascript -e "display notification with title \"$notificationMessage\"" 2>/dev/null

# Show notification in linux
notify-send "$notificationMessage" 2>/dev/null
