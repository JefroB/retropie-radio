#!/bin/sh
function filecleanup {
	echo -e "\x1B[01;91m Cleaning up some filenames and directroy paths, please wait... \x1B[0m"
	bash "/home/pi/.mpd/OtherScripts/Manage Playlists/ZZZ Playlist Creation Scripts/filename_cleanup.sh"
	wait
	echo -e "\x1B[01;91m Cleaning up playlists... \x1B[0m"
	rm /home/pi/.mpd/playlists/* > /dev/null 2>&1
	wait
	echo -e "\x1B[01;91m Cleaning up Genre playlists... \x1B[0m"
	rm "/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"* > /dev/null 2>&1
	wait
	echo -e "\x1B[01;91m Cleaning up Artist playlists... \x1B[0m"
	rm "/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"* > /dev/null 2>&1
	wait
	echo -e "\x1B[01;91m Cleaning up Album playlists... \x1B[0m"
	rm "/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"* > /dev/null 2>&1
	wait
}
function genres {
	echo -e "\x1B[01;91m Getting ready to create genre playlists. Please wait... \x1B[0m"
	sleep 1
	echo -e "\x1B[01;91m 3 \x1B[0m"
	sleep 1
	echo -e "\x1B[01;93m 2 \x1B[0m"
	sleep 1
	echo -e "\x1B[01;93m 1 \x1B[0m"
	sleep 1
	echo -e "\x1B[01;92m GO! \x1B[0m"
	bash "/home/pi/.mpd/OtherScripts/Manage Playlists/ZZZ Playlist Creation Scripts/create_genre_playlists.sh"
}
function artists {
	echo -e "\x1B[01;91m Getting ready to create artist playlists. Please be patient... \x1B[0m"
	sleep 1
	echo -e "\x1B[01;91m 3... \x1B[0m"
	sleep 1
	echo -e "\x1B[01;93m 2.. \x1B[0m"
	sleep 1
	echo -e "\x1B[01;93m 1. \x1B[0m"
	sleep 1
	echo -e "\x1B[01;92m GO! \x1B[0m"
	bash "/home/pi/.mpd/OtherScripts/Manage Playlists/ZZZ Playlist Creation Scripts/create_artist_playlists.sh"
}
function albums {
	echo -e "\x1B[01;91m Getting ready to create album playlists. Just a few more moments... \x1B[0m"
	sleep 1
	echo -e "\x1B[01;91m 3... \x1B[0m"
	sleep 1
	echo -e "\x1B[01;93m 2.. \x1B[0m"
	sleep 1
	echo -e "\x1B[01;93m 1. \x1B[0m"
	sleep 1
	echo -e "\x1B[01;92m GO! \x1B[0m"
	bash "/home/pi/.mpd/OtherScripts/Manage Playlists/ZZZ Playlist Creation Scripts/create_album_playlists.sh"
}
function allsongs {
	echo -e "\x1B[01;91m Getting ready to create All Songs playlist. This is the final step. Watch the pretty colors... \x1B[0m"
	sleep 1
	echo -e "\x1B[01;91m 3... \x1B[0m"
	sleep 1
	echo -e "\x1B[01;93m 2.. \x1B[0m"
	sleep 1
	echo -e "\x1B[01;93m 1. \x1B[0m"
	sleep 1
	echo -e "\x1B[01;92m GO! \x1B[0m"
	bash "/home/pi/.mpd/OtherScripts/Manage Playlists/ZZZ Playlist Creation Scripts/create_all_songs_playlist.sh"
}

function quit {
	exit 0
}
filecleanup
genres
artists
albums
allsongs
quit
