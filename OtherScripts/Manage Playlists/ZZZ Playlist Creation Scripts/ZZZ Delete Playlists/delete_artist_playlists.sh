#!/bin/sh
function clearpl {
	mpc -p 6700 clear stop > /dev/null 2>&1
	wait
	mpc -p 6700 clear > /dev/null 2>&1
	wait
}
function deletemthreeyoos {
	echo -e "\x1B[31m Cleaning up artist playlists... \x1B[0m"
	rm /home/pi/.mpd/playlists/'*_artist*' > /dev/null 2>&1
	wait
	sleep 1
	echo .
	sleep 1
	echo ..
	sleep 1
	echo ...
}
function deleteartistscripts {
	echo -e "\x1B[31m Cleaning up artist launch scripts...  \x1B[0m"
	rm "/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"* > /dev/null 2>&1
	wait
	sleep 1
	echo .
	sleep 1
	echo ..
	sleep 1
	echo ...
}
function quit {
	exit 0
}
clearpl
deletemthreeyoos
deleteartistscripts
quit