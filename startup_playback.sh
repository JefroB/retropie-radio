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

function startmpd {
	mpd
}

function clearpl {
	mpc -p 6700 clear  >/dev/null
}

function loadlastpl {
	mpc -p 6700 load custom_playlist  >/dev/null
	mpc -p 6700 shuffle  >/dev/null
}

function insertsound {
	sleep .02
	mpc -p 6700 update startsounds/ >/dev/null
	sleep .3
	mpc -p 6700 insert startsounds/kwrp.mp3 >/dev/null
	sleep .3
}

function setvolume0 {
	local VOL=0
	mpc volume $VOL >/dev/null
	sleep .05
}

function play {
	mpc -p 6700 play 1 >/dev/null
}

function fadein {
	local VOL=$CURRENTVOL
	until [  $VOL -lt 0 ]; do
	mpc -p 6700 volume +1 >/dev/null
	let VOL-=1
	sleep .005
done
}

function quit {
	exit 0
}

getvolume
setvolume0
startmpd
clearpl
loadlastpl
insertsound
play
fadein
quit

# eof
