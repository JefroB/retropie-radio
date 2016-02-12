#!/bin/sh
function mpcupdate {
	mpc -p 6700 update  > /dev/null 2>&1
}

function deletealbumlist {
	echo deleting album list
	rm ~/.mpd/albums.list
	sleep .3
}

function listalbums {
	echo recreating album list
	touch ~/.mpd/albums.list
	mpc -p 6700 list Album >~/.mpd/albums.list
}

function getalbumarray {
	# Read the file in parameter and fill the array named "array"
	getArray() {
    	array=() # Create array
    	while IFS= read -r line # Read a line
    	do
        	array+=("$line") # Append line to the array
    	done < "$1"
	}

	getArray "/home/pi/.mpd/albums.list"
}

# loop through array to create album .m3u playlist
function createplaylists {
	getArray "/home/pi/.mpd/albums.list"
	for e in "${array[@]}"
	do
		tempname="$e"
		newname=${tempname// /_}
		secondtempname=${newname//</_}
		thirdtempname=${secondtempname//>/_}
		filename=${thirdtempname//\//+}_pl

		touch ~/.mpd/albumname.tmp >/dev/null

    		echo -e "\x1B[34m removing $filename.m3u \x1B[0m"
    		mpc -p 6700 rm $filename  > /dev/null 2>&1
    		wait
    		echo -e "\x1B[32m creating .m3u and playlist management script for $albumname \x1B[0m"
    		mpc -p 6700 findadd Album "$e" >/dev/null
    		wait
    		
    		mpc -p 6700 playlist >~/.mpd/albumname.tmp
    		wait
				
		albumname=$(head -n 1 ~/.mpd/albumname.tmp)
    		tempscriptname="$albumname"
		newscriptname=${tempscriptname// /_}
		secondtempscriptname=${newscriptname//</_}
		thirdtempscriptname=${secondtempscriptname//>/_}
		scriptname=${thirdtempscriptname//\//+}_pl

    		mpc -p 6700 save $filename >/dev/null
    		wait
    		mpc -p 6700 clear >/dev/null
    		wait
    		
    		# create script to add playlist to current list in mpd
    		rm "/home/pi/.mpd/OtherScripts/Manage Playlists/Albums""/"$scriptname.sh >/dev/null 2>&1
    		wait
    		touch "/home/pi/.mpd/OtherScripts/Manage Playlists/Albums""/"$scriptname.sh
    		wait
    		echo "#!/bin/sh" >"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo clear >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo mpc -p 6700 load "$filename"" >/dev/null" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo 'echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
		echo 'echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo mpc -p 6700 playlist "$filename" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
		echo 'echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
		echo 'echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"' >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo sleep 2 >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo mpc -p 6700 rm custom_playlist >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo wait >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo sleep 4 >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh
    		echo mpc -p 6700 save custom_playlist" >/dev/null" >>"/home/pi/.mpd/OtherScripts/Manage Playlists/Albums/"$scriptname.sh

	done
	echo -e "\x1B[36m Playlist creation completed successfully! \x1B[0m"
}
function quit {
	exit 0
}
mpcupdate
deletealbumlist
listalbums
getalbumarray
createplaylists
quit



