#!/bin/sh
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
function fadeout {
	local VOL=$CURRENTVOL
	until [  $VOL -lt 0 ]; do
#	echo Volume Step $VOL
	mpc -p 6700 volume -1 > /dev/null 2>&1
	let VOL-=1
	sleep .01
done
}
function stop {
	mpc -p 6700 stop > /dev/null 2>&1
}
function killmpd {
	sudo killall mpd  > /dev/null 2>&1
	sleep .5
	mpc volume 77  > /dev/null 2>&1
}
function quit {
	exit 0
}
getvolume
fadeout
stop
killmpd
quit
# eof
