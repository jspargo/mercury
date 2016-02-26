#!/bin/bash

# If no variable passed, say hellp and say the time
if [ -z "$1" ]
then
    echo "Hello! My name is Project Mercury" | festival --tts
    T="$(date +%T)"
    echo "The time is ${T}" | festival --tts 

# Read the variable passed
# TODO: some checks that it can be read, or default
else
    echo "$1" | festival --tts
fi
echo "Speech complete"


