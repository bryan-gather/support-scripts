#!/bin/bash

# Infinite loop to keep the script running
while true; do
    # Use AppleScript to get the frontmost application and its window title
    frontmost_app=$(osascript -e 'tell application "System Events"' \
                               -e 'set frontApp to name of first application process whose frontmost is true' \
                               -e 'end tell')
    window_title=$(osascript -e 'tell application "System Events"' \
                              -e 'set frontApp to first application process whose frontmost is true' \
                              -e 'set windowName to name of window 1 of frontApp' \
                              -e 'end tell')

    # Print the application name and window title
    echo "Frontmost App: $frontmost_app, Window Title: $window_title"

    # Sleep for 0.1 seconds
    sleep 0.1
done
