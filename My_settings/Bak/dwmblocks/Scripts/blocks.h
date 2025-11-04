//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
{"","${MYHOSTNM}.config/suckless/dwmblocks/Scripts/Weather.sh",     0,       5},
{"", "${MYHOSTNM}.config/suckless/dwmblocks/Scripts/Updates.sh",    0,       5},
{"", "${MYHOSTNM}.config/suckless/dwmblocks/Scripts/Disk.sh",       60,     14},
{"", "${MYHOSTNM}.config/suckless/dwmblocks/Scripts/Memory.sh",     30,     14},
{"", "${MYHOSTNM}.config/suckless/dwmblocks/Scripts/Pulse.sh",      0,      10},
{"", "${MYHOSTNM}.config/suckless/dwmblocks/Scripts/Clock.sh",      55,     1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim ='||';
