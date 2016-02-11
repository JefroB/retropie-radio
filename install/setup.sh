#!/bin/sh
function backup {
	echo -------------------------------------------------------------------------------
	echo -e "\x1B[31m Make a backup image of your SD card BEFORE running this installer!!! \x1B[0m"
	echo -------------------------------------------------------------------------------
	echo
	PS3="Have you made a backup? "
	select option in yes no
	do
	    case $option in
	        yes) 
	            echo "Ok. Installing..."
	            sleep 3
	            break;;
	            
	        no)
	            echo -e "\x1B[31m What are you waiting for? Go make a backup! \x1B[0m"
	            sleep 3
	            exit 0;;
	     esac
	done
}
function getmusicdirectory {
	if [ -f "/home/pi/.mpd/music.dir" ]
	then 
    		source /home/pi/.mpd/music.dir
    	else
		echo -------------------------------------------------------------------------------
		echo Is your music is located anywhere other than /home/pi/Music?
		PS3="Please choose an option "
		select option in other default quit
		do
		    case $option in
		        other) 
		        	echo -------------------------------------------------------------------------------
		        	echo "Please enter the top level folder of your music directory."
		        	echo -e "\x1B[31m Be careful, you will not get another chance to change this. \x1B[0m"
		        	echo " If your directory path is not entered correctly, you will have to manually configure mpd."
		        	echo
		        	echo "Example 1: /home/pi/mp3s"
		        	echo "Example 2: /media/usb"
		        	echo 
		        	read -rp "Enter your music directoy: " submittedmusicdir
				echo Using $submittedmusicdir as music path
				USERDEFINEDMUSICDIR="$submittedmusicdir"
				MUSICDIR="$submittedmusicdir"
				sleep 5
		    		touch /home/pi/.mpd/music.dir
		    		echo MUSICDIR="'$USERDEFINEDMUSICDIR'" >/home/pi/.mpd/music.dir
		        	sleep 3
		        	echo -e "\x1B[31m Creating symlink to $MUSICDIR at /home/pi/Music... \x1B[0m"
				ln -s "$MUSICDIR" /home/pi/Music
				wait
				sleep 3
				break;;
			default)
				echo exiting usig default music paths
				MUSICDIR="/home/pi/Music"
				touch /home/pi/.mpd/music.dir
		    		echo MUSICDIR="'/home/pi/Music'" >/home/pi/.mpd/music.dir
				wait
				sleep 3
		        	break;;
		        quit)
		        	echo exiting
		        	sleep 3
		        	break;;
		     esac
		done
	fi
}
function installpixeltheme {
	if [ -f "/etc/emulationstation/themes/pixel/pixel.xml" ]
	then 
    		sudo tar -zxvf /home/pi/.mpd/pixel-radio.tar.gz -C /etc/emulationstation/themes/pixel
    		if [ -f "/etc/emulationstation/themes/pixel/radiotheme.xml" ]
		then 
		    	if [ -f "/etc/emulationstation/themes/pixel/console.png" ]
			then 
		    		if [ -f "/etc/emulationstation/themes/pixel/logo.png" ]
				then 
					sudo rm /home/pi/.mpd/pixel-radio.tar.gz
				else
					echo -e "\x1B[31m Pixel theme test failed, trying again. \x1B[0m"
					sudo tar -zxvf /home/pi/.mpd/pixel-radio.tar.gz -C /etc/emulationstation/themes/pixel
					wait
					if [ -f "/etc/emulationstation/themes/pixel/logo.png" ]
						then
							echo Test passed.
						else
							echo -e "\x1B[31m Pixel theme test failed. You have the pixel theme, but I don't know what to do. Try creating a theme yourself. \x1B[0m"
							sleep 10
					fi
    				fi
    			else
				echo -e "\x1B[31m Pixel theme test failed, trying again. \x1B[0m"
				sudo tar -zxvf /home/pi/.mpd/pixel-radio.tar.gz -C /etc/emulationstation/themes/pixel
				wait
    			fi
    		else
			echo -e "\x1B[31m Pixel theme test failed, trying again. \x1B[0m"
			sudo tar -zxvf /home/pi/.mpd/pixel-radio.tar.gz -C /etc/emulationstation/themes/pixel
			wait
    		fi
    	fi
}
function unpackstartsounds {
	if [ -f "/home/pi/.mpd/music.dir" ]
	then 
		echo -e "\x1B[31m Installing startsounds... \x1B[0m"
    		sudo tar -zxvf /home/pi/.mpd/startsounds.tar.gz -C "$MUSICDIR"/startsounds
    		wait
    		if [ -f "$MUSICDIR"/startsounds/kwrp.mp3 ]
		then 
			echo -e "\x1B[31m Startsounds installed successfully. \x1B[0m"
			sleep 1
		fi
	fi
}
function unpackgameart {
	echo -e "\x1B[31m Installing gamelist... \x1B[0m"
    	sudo tar -zxvf /home/pi/.mpd/startsounds.tar.gz -C /home/pi/.emulationstation/gamelists/radio
    	wait
    	if [ -f "/home/pi/.emulationstation/gamelists/radio/gamelist.xml" ]
	then 
		echo -e "\x1B[31m gamelist installed successfully. \x1B[0m"
		sleep 1
	fi
	sleep 1
	echo -e "\x1B[31m Installing images... \x1B[0m"
    	sudo tar -zxvf /home/pi/.mpd/images.tar.gz -C /home/pi/.emulationstation/downloaded_images/radio
    	wait
    	if [ -f "/home/pi/.emulationstation/gamelists/radio/gamelist.xml" ]
	then 
		echo -e "\x1B[31m gamelist installed successfully. \x1B[0m"
		sleep 1
	fi
}
function installmpdmpc {
		echo -e "\x1B[31m Installing mpd and mpc, please wait... \x1B[0m"
		sudo apt-get install mpd mpc
		wait
}
function mpdupdate {
	echo -e "\x1B[31m Starting mpd... \x1B[0m"
	mpd
	wait
	echo -e "\x1B[31m Updating mpd database... \x1B[0m"
	mpc -p 6700 update
	wait
}
function allplalylists {
	echo -e "\x1B[31m Creating all playlists. This can take some time... \x1B[0m"
	sleep 5
	bash "/home/pi/.mpd/OtherScripts/Manage Playlists/ZZZ Playlist Creation Scripts/create_all_playlists.sh"
}
function editemulaunchfiles {
	echo -e "\x1B[31m Editing emulator luanch files. Please wait... \x1B[0m"
	sleep 5
	bash "/home/pi/.mpd/install/emulaunceredits.sh"
}
function deleteinstallfiles {
	sudo rm -rf /home/pi/.mpd/install
}
function reboot {
	echo -e "\x1B[31m The pi must now reboot. Please wait... \x1B[0m"
	sleep 3
	sudo reboot
}
function quit {
	exit 0
}
backup
getmusicdirectory
unpackstartsounds
unpackgameart
installmpdmpc
mpdupdate
installpixeltheme
editemulaunchfiles 
allplalylists
deleteinstallfiles
reboot
quit
# eof
