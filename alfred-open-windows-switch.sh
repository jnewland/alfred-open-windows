#!/bin/bash
exec 2> >(logger -s -t $(basename $0))
osascript -sh switch.ascr "$focusedapp" "$1"
