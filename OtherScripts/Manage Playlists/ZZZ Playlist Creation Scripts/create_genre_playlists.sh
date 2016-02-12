#!/bin/sh
function mpcupdate {
	mpc -p 6700 update  > /dev/null 2>&1
}

function deletegenrelist {
	echo deleting genre list
	rm ~/.mpd/genres.list
	sleep .3
}

function listgenres {
	echo recreating genre list
	touch ~/.mpd/genres.list
	mpc -p 6700 list Genre >~/.mpd/genres.list
}

function getgenrearray {
	# Read the file in parameter and fill the array named "array"
	getArray() {
    	array=() # Create array
    	while IFS= read -r line # Read a line
    	do
        	array+=("$line") # Append line to the array
    	done < "$1"
	}

	getArray "/home/pi/.mpd/genres.list"
}

# loop through array to create genre .m3u playlist
function createplaylists {
	getArray "/home/pi/.mpd/genres.list"
	for e in "${array[@]}"
	do
		tempname="$e"
		newname=${tempname// /_}
		secondtempname=${newname//</_}
		thirdtempname=${secondtempname//>/_}
		filename=${thirdtempname//\//+}_pl
		plname=${thirdtempname//\//+}_genre
		
		
    		echo -e "\x1B[34m removing $filename.m3u \x1B[0m"
    		mpc -p 6700 rm $plname  > /dev/null 2>&1
    		wait
    		echo -e "\x1B[31m creating $filename.m3u and playlist management script \x1B[0m"
    		mpc -p 6700 findadd Genre "$e" >/dev/null
    		wait
    		mpc -p 6700 shuffle >/dev/null
    		wait
    		mpc -p 6700 save $plname >/dev/null
    		wait
    		mpc -p 6700 clear >/dev/null
    		wait
    		
    		
    		# create script to add playlist to current list in mpd
    		touch "/home/pi/.mpd/OtherScripts/Manage Playlists/Genres""/"$filename.sh
    		echo "#!/bin/sh" >"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo clear >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo mpc -p 6700 load "$plname"" >/dev/null" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo echo -e '"'\x1B[35m ------------------------------------------------------------ \x1B[0m'"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
		echo echo -e '"'\x1B[36m ------------------------------------------------------------ \x1B[0m'"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo mpc -p 6700 playlist "$filename" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
		echo echo -e '"'\x1B[36m ------------------------------------------------------------ \x1B[0m'"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
		echo echo -e '"'\x1B[35m ------------------------------------------------------------ \x1B[0m'"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo sleep 5 >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo mpc -p 6700 rm custom_playlist >/dev/null >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh
    		echo mpc -p 6700 save custom_playlist" >/dev/null" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Genres/"$filename.sh

	done
	echo Playlist creation completed successfully!
}
function reboot {
	echo now rebooting so that ES can see the new playlists...
	sudo reboot
}
function quit {
	exit 0
}
mpcupdate
deletegenrelist
listgenres
getgenrearray
createplaylists
#reboot
quit

