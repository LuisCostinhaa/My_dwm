#!/bin/sh

# Ethernet
[ "$(cat /sys/class/net/e*/operstate 2>/dev/null)" = 'up' ] && ethericon="🛜" || ethericon="❎ off "
printf "$ethericon"
