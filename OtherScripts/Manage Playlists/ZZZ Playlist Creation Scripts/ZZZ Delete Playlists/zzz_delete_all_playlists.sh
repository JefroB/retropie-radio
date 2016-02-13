#!/bin/sh
clear
function header {
	echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"
}
function clearpl {
	mpc -p 6700 clear stop > /dev/null 2>&1
	wait
	mpc -p 6700 clear > /dev/null 2>&1
	wait
}
function deletealbumscripts {
	bash "/home/pi/.mpd/OtherScripts/Manage Playlists/ZZZ Playlist Creation Scripts/ZZZ Delete Playlists/delete_album_playlists.sh"
	wait
	sleep 1.5
}
function deleteartistscripts {
	bash "/home/pi/.mpd/OtherScripts/Manage Playlists/ZZZ Playlist Creation Scripts/ZZZ Delete Playlists/delete_artist_playlists.sh"
	wait
	sleep 1.5
}
function deletegenrescripts {
	bash "/home/pi/.mpd/OtherScripts/Manage Playlists/ZZZ Playlist Creation Scripts/ZZZ Delete Playlists/delete_genre_playlists.sh"
	wait
	sleep 1.5
}
function deletemthreeyoos {
	echo -e "\x1B[31m Cleaning up any remaining playlists... \x1B[0m"
	rm /home/pi/.mpd/playlists/* > /dev/null 2>&1
	wait
	sleep 1.5
}
function footer {
	echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"
	echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"
	sleep 3
}
function quit {
	exit 0
}
header
clearpl
deletealbumscripts
deleteartistscripts
deletegenrescripts
deletemthreeyoos
footer
quit