#!/bin/sh
function getvolume {
	if [ -f "/home/pi/.mpd/current.vol" ]
	then 
    		source /home/pi/.mpd/current.vol
    		echo using file to get volume setting
    	else
    		CURRENTVOL="70"
    		touch /home/pi/.mpd/current.vol
    		echo volume file created
    		echo CURRENTVOL='"70"' >/home/pi/.mpd/current.vol
	fi
}
function increasevol {
	local -i VOL=$CURRENTVOL
	let NEWVOL=$VOL+2
#	echo volume level is  now $NEWVOL
	rm /home/pi/.mpd/current.vol
	mpc -p 6700 volume $NEWVOL
}
function savenewvol {
	echo CURRENTVOL='"'$NEWVOL'"' >/home/pi/.mpd/current.vol
}
function quit {
	exit 0
}
getvolume
increasevol
savenewvol
quit