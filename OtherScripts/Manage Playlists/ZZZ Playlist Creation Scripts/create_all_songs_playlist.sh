#!/bin/sh
function startmpd {
	mpd >/dev/null
	wait
}
function getmusicdirectory {
	if [ -f "/home/pi/.mpd/music.dir" ]
	then 
    		source /home/pi/.mpd/music.dir
    	else
    		MUSICDIR="/hdd/Music"
    		touch /home/pi/.mpd/music.dir
    		echo MUSICDIR='"/hdd/Music"' >/home/pi/.mpd/music.dir
	fi
}
function filepathcleanup {
	#get music directory
	sudo find $MUSICDIR -maxdepth 10 -name '* *' \
    		-execdir bash -c 'mv "$1" "${1// /_}"' _ {} \;
}
function deleteoldlist {
	rm ~/.mpd/allsongs.list
	wait
	mpc -p 6700 rm all_songs >/dev/null
	wait
	rm ~/.mpd/playlists/all_songs.m3u >/dev/null
	wait
	mpc -p 6700 rm custom_playlist >/dev/null
	wait
	rm ~/.mpd/playlists/custom_playlist.m3u >/dev/null
}
function mpcupdate {
	mpc -p 6700 update
}
function clearpl {
	mpc -p 6700 clear
}
function listall {
	mpc -p 6700 listall >~/.mpd/allsongs.list
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

	getArray "/home/pi/.mpd/allsongs.list"
}
# loop through array to create artist .m3u playlist
function createplaylist {
	getArray "/home/pi/.mpd/allsongs.list"
	let i=0
	for e in "${array[@]}"
	do
		let i=i+1
		filepath=$e
		echo -e "\x1B[33m adding file at the following location to playlist: \x1B[0m"
		echo -e -e "\x1B[35m $filepath \x1B[0m"
	#	echo adding file '@:' $filepath
		mpc -p 6700 add $filepath
		echo -e "\x1B[32m $i total songs added to playlist \x1B[0m"
	wait
	done
}
function success {
	echo Playlist creation completed successfully!
}
function saveplaylist {
	mpc -p 6700 shuffle
	wait
	mpc -p 6700 playlist
	wait
	echo -e "\x1B[32m saving all_songs playlist \x1B[0m"
	mpc -p 6700 save all_songs
	echo -e "\x1B[01;91m playlist contains $i total songs. \x1B[0m"
	wait
	mpc -p 6700 save custom_playlist >/dev/null
	echo -e "\x1B[36m setting all_songs playlist as current playlist. \x1B[0m"
}
function startplayback {
	bash /home/pi/.mpd/startup_playback.sh
}
function quit {
	sleep 9
	echo -e "\x1B[35m WELCOME TO MOTHERGRABBIN RETROPIE \x1B[0m"
	sleep 12
	exit 0
}
startmpd
getmusicdirectory
filepathcleanup
deleteoldlist
mpcupdate
clearpl
listall
getfilearray
createplaylist
success
saveplaylist
startplayback
quit


# eof
