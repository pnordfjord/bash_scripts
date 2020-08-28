#! /bin/bash

# Distinguish between Windows/Linux/Mac

if type - t wevtutil &>/dev/null; then
    OS=Windows
elif type -t scutil &>/dev/null; then
    OS=Mac
else
    OS=Linux
fi
echo $OS

# looking for type. -t means don't print anything
