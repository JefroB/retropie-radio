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
function startmpd {
	mpd
}
function setvolume0 {
	local STARTVOL=0
	mpc volume $STARTVOL >/dev/null
	sleep .05
}
function play {
	sleep .02
	mpc -p 6700 play >/dev/null
}
function fadein {
	local VOL=$CURRENTVOL
	until [  $VOL -lt 0 ]; do
#	echo Volume Step $VOL
	mpc -p 6700 volume +1 >/dev/null
	let VOL-=1
	sleep .01
done
}
function quit {
	exit 0
}
getvolume
setvolume0
startmpd
play
fadein
quit
# eof