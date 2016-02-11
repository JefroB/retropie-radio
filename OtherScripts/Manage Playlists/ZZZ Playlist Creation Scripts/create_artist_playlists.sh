#!/bin/sh
function mpcupdate {
	mpc -p 6700 update
}

function deleteartistlist {
	echo deleting artist list
	rm ~/.mpd/artists.list
	sleep .3
}

function listartists {
	echo recreating artist list
	touch ~/.mpd/artists.list
	mpc -p 6700 list Artist >~/.mpd/artists.list
}

function getartistarray {
	# Read the file in parameter and fill the array named "array"
	getArray() {
    	array=() # Create array
    	while IFS= read -r line # Read a line
    	do
        	array+=("$line") # Append line to the array
    	done < "$1"
	}

	getArray "/home/pi/.mpd/artists.list"
}

# loop through array to create artist .m3u playlist
function createplaylists {
	getArray "/home/pi/.mpd/artists.list"
	for e in "${array[@]}"
	do
		tempname="$e"
		newname=${tempname// /_}
		secondtempname=${newname//</_}
		thirdtempname=${secondtempname//>/_}
		filename=${thirdtempname//\//+}_pl
		
#    		echo adding "$e" to mpd
#    		echo mpc -p 6700 findadd Artist "$e"
    		echo -e "\x1B[30m removing $filename.m3u \x1B[0m"
    		mpc -p 6700 rm $filename  > /dev/null 2>&1
    		wait
    		echo -e "\x1B[34m creating $filename.m3u and playlist management script \x1B[0m"
#    		echo mpc -p 6700 findadd Artist "$e"
    		mpc -p 6700 findadd Artist "$e" >/dev/null
    		wait
    		mpc -p 6700 shuffle >/dev/null
    		wait
    		mpc -p 6700 playlist >/dev/null
    		wait
#    		echo saving $filename.m3u
    		mpc -p 6700 save $filename >/dev/null
    		wait
    		mpc -p 6700 clear >/dev/null
    		wait
#    		echo playlist cleared
    		
    		# create script to add playlist to current list in mpd
    		touch "/home/pi/.mpd/OtherScripts/Manage Playlists/Artists""/"$filename.sh
    		echo "#!/bin/sh" >"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		sleep .1
    		echo mpc -p 6700 load "$filename"" >/dev/null" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo mpc -p 6700 playlist >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo sleep 5 >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo mpc -p 6700 save custom_playlist" >/dev/null" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh

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
deleteartistlist
listartists
getartistarray
createplaylists
#reboot
quit

