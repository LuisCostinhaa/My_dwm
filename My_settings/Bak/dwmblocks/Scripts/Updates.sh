#!/usr/bin/env dash

updatesarch="$(checkupdates 2> /dev/null | wc -l)"
#updatesaur="$(yay -Qum 2> /dev/null | wc -l)"
#updates=$(("$updatesarch" + "$updatesaur"))
#icon1="🛠" ⚒️
icon1="⚒"
#icon2="⚙"
icon3="Up" 
echo "$icon3" "$updatesarch"
#echo -e  "$icon1" "$updatesarch" "$icon2" "$updatesaur"