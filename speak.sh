#!/bin/bash

# If no variable passed, say hellp and say the time
if [ -z "$1" ]; then
    echo "Hello! My name is Project Mercury" | festival --tts
    # %T - 24 hr
    # %I:%M - HH:mm
    # %r - 12 hr
    T="$(date +%I:%M)"
    echo "The time is ${T}" | festival --tts 

# Read the variable passed
# TODO: some checks that it can be read, or default
elif [ "$1" = "--temp" ] || [ "$1" = "-t" ]; then
    temp=$(python getCurrentTemp.py)
    echo "The current temperature is ${temp} degrees" | festival --tts
else
    echo "$1" | festival --tts
fi
echo "Speech complete"


