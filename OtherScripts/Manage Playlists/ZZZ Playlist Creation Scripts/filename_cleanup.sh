#!/bin/bash
function getmusicdirectory {
	if [ -f "/home/pi/.mpd/music.dir" ]
	then 
    		source /home/pi/.mpd/music.dir
    	else
    		MUSICDIR="/hdd/Music"
    		touch /home/pi/.mpd/music.dir
    		echo MUSICDIR='"/hdd/Music"' >/home/pi/.mpd/music.dir
	fi
}
function filepathcleanup {
	#get music directory
	sudo find $MUSICDIR -maxdepth 10 -name '* *' \
    		-execdir bash -c 'mv "$1" "${1// /_}"' _ {} \;
}
function quit {
	exit 0
}
getmusicdirectory
filepathcleanup
quit