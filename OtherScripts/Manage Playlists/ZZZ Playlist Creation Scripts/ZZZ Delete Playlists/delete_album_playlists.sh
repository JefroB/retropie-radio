#!/bin/sh
function clearpl {
	mpc -p 6700 clear stop > /dev/null 2>&1
	wait
	mpc -p 6700 clear > /dev/null 2>&1
	wait
}
function deletemthreeyoos {
	echo -e "\x1B[31m Cleaning up album playlists... \x1B[0m"
	rm /home/pi/.mpd/playlists/'*_album*' > /dev/null 2>&1
	wait
	sleep 1
	echo .
	sleep 1
	echo ..
	sleep 1
	echo ...
}
function deletealbumscripts {
	echo -e "\x1B[31m Cleaning up album launch scripts...  \x1B[0m"
	rm "/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"* > /dev/null 2>&1
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
deletealbumscripts
quit