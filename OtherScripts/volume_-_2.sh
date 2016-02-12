#!/bin/sh
clear
function getvolume {
	if [ -f "/home/pi/.mpd/current.vol" ]
	then 
    		source /home/pi/.mpd/current.vol
    	else
    		CURRENTVOL="70"
    		touch /home/pi/.mpd/current.vol
    		echo CURRENTVOL='"70"' >/home/pi/.mpd/current.vol
	fi
}
function decreasevol {
	local -i VOL=$CURRENTVOL
	let NEWVOL=$VOL-2
	rm /home/pi/.mpd/current.vol > /dev/null 2>&1
	mpc -p 6700 volume $NEWVOL > /dev/null 2>&1
}
function savenewvol {
	echo CURRENTVOL='"'$NEWVOL'"' >/home/pi/.mpd/current.vol
}
function quit {
	exit 0
}
getvolume
decreasevol
savenewvol
quit
