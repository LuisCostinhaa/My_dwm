#!/usr/bin/env dash

weather=$(curl -s wttr.in/guimaraes?format=%t)
icon=""
#icon="🌤"
printf "%s %s \n" "$icon" "$weather"
