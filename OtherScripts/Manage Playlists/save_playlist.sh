#!/bin/sh
function pleasewait {
	clear
	echo -e "\x1B[32m Saving Current Playlist. Please wait... \x1B[0m"
	sleep 2.5
}
function header {
	clear
	touch /home/pi/.mpd/current_playlist.tmp > /dev/null 2>&1
	echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[32m -------------     Saving Current Playlist     -------------- \x1B[0m"
	echo -e "\x1B[33m ------------------------------------------------------------ \x1B[0m"
	sleep 1.5
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
	echo -e "\x1B[31m -- Saving "$songcount" songs to playlist. \x1B[0m"
	sleep 2.5
}
function footer {
	echo -e "\x1B[33m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[32m ---- Only the first 35 songs in the playlist are shown. ---- \x1B[0m"
	echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"
	wait
	sleep 1
}
function save {
	mpc -p 6700 rm custom_playlist >/dev/null
	wait
	sleep 4
	mpc -p 6700 save custom_playlist >/dev/null
	wait
	sleep 2.5
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
save
quit