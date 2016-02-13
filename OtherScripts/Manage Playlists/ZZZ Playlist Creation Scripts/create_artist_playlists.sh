#!/bin/sh
function mpcupdate {
	mpc -p 6700 update  > /dev/null 2>&1
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
		fourthtempname=${thirdtempname//:/_}
		filename=${fourthtempname//\//+}_pl
		plname=${fourthtempname//\//+}_artist
		
    		echo -e "\x1B[34m removing $filename.m3u \x1B[0m"
    		mpc -p 6700 rm $plname  > /dev/null 2>&1
    		wait
    		echo -e "\x1B[33m creating $filename.m3u and playlist management script \x1B[0m"
    		mpc -p 6700 findadd Artist "$e" >/dev/null
    		wait
    		mpc -p 6700 shuffle >/dev/null
    		wait
    		mpc -p 6700 save $plname >/dev/null
    		wait
    		mpc -p 6700 clear >/dev/null
    		wait
    		
    		# create script to add playlist to current list in mpd
    		touch "/home/pi/.mpd/OtherScripts/Manage Playlists/Artists""/"$filename.sh
    		echo "#!/bin/sh" >"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo clear >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo mpc -p 6700 load "$plname"" >/dev/null" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo 'echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
		echo 'echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo mpc -p 6700 playlist "$plname" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo 'echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
		echo 'echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo sleep 5 >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo mpc -p 6700 rm custom_playlist >/dev/null >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Artists/"$filename.sh
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

