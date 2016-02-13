#!/bin/sh
function header {
	clear
	touch /home/pi/.mpd/current_playlist.tmp > /dev/null 2>&1
	echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[32m --------------------- Current Playlist --------------------- \x1B[0m"
	echo -e "\x1B[33m ------------------------------------------------------------ \x1B[0m"	
}
function createplaylistfile {	
	mpc -p 6700 playlist > ~/.mpd/current_playlist.tmp
	wait
	head -35 ~/.mpd/current_playlist.tmp
	wait
}
function getfilearray {
	# Read the file in parameter and fill the array named "array"
	getArray() {
    	array=() # Create array
    	while IFS= read -r line # Read a line
    	do
        	array+=("$line") # Append line to the array
    	done < "$1"
	}

	getArray "/home/pi/.mpd/current_playlist.tmp"
}
function getcount {
	getArray "/home/pi/.mpd/current_playlist.tmp"
	let i=0
	for e in "${array[@]}"
	do
		let i=i+1
	wait
	done
	songcount=$i
}
function printsongcount {
	echo -e "\x1B[31m -- Playlist contains "$songcount" songs. \x1B[0m"
}
function footer {
	echo -e "\x1B[33m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[32m ---- Only the first 35 songs in the playlist are shown. ---- \x1B[0m"
	echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"
	wait
	sleep 8
}
function quit {
	exit 0
}
header
createplaylistfile
getfilearray
getcount
printsongcount
footer
quit