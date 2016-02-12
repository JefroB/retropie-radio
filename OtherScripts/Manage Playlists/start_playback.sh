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
function startmpd {
	mpd > /dev/null 2>&1
	wait
}
function setvolume0 {
	local STARTVOL=0
	mpc volume $STARTVOL  > /dev/null 2>&1
	wait
}
function play {
	sleep .2
	mpc -p 6700 play  > /dev/null 2>&1
	wait
	mpc -p 6700 next  > /dev/null 2>&1
}
function fadein {
	local VOL=$CURRENTVOL
	until [  $VOL -lt 0 ]; do
#	echo Volume Step $VOL
	mpc -p 6700 volume +1  > /dev/null 2>&1
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