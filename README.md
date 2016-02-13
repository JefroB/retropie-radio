# retropie-radio
##### Description:
> Background music for retropie using mpd, with playlist management via emulationstation. 

##### Background:
> Any modern console is incomplete without background music. Background music also seemed to be a popular recent feature request on the petrockblock.com forums. Zigurana and I came up with a quick set of requirements, that I slightly changed along the way.


##### Requirements:
> + fade-out / fade-in upon starting /stopping an emulator
> + ~~volume level normalization~~
> + ~~dynamically~~ create random playlist based on files present in directory
> + creating playlists must not drastically effect boot time
> + must be lightweight, cannot effect emulator performance
> + must work with both large and small music libraries
> + hackable
> + ES integration



##### Notes:
> + _This will rename files and folders in your music collection. As always, be sure to have a backup._
> 
> + _Complete compaitibility with music libraries ofver 10,000 .MP3s is not guaranteed. With a library of that size, you may see issues saving playlists, in particular, the "all songs" playlist_
> 
> + For now, ES integration is achieved by means of scripts that are accessable via the emulator menu in ES. In the future, complete integration into a build of ES could be possible.
> 
> + Volume normalization is off the table since performance is more important. There are 3rd party tools that can batch normalize your music library, look into running one of those.


---


# Installation Steps

### Step 1
Backup your SD card, and your music collection, if it is seperate.

### Step 2
(optional but recommended) If you'd like music to start playing at boot time, you'll need to add the following to /etc/rc.local:

        su pi -c 'bash /home/pi/.mpd/startup_playback.sh &'
        
### Step 3
Save the following script as retropie-radio in /home/pi/RetroPie-Setup/scriptmodules/ports


```
#!/usr/bin/env bash

# This file is part of The RetroPie Project
# 
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
# 
# See the LICENSE.md file at the top-level directory of this distribution and 
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_menus="4+"
rp_module_id="radio"
rp_module_desc="Radio"

function depends_radio() {
	git clone https://github.com/Labelwhore/retropie-radio.git /home/pi/.mpd
	wait
	sudo chown pi:pi -R /home/pi/.mpd
	wait
        su pi -c 'bash ~/.mpd/install/setup.sh'
}

function sources_radio() {
        git clone https://github.com/Labelwhore/retropie-radio.git /home/pi/.mpd
}

function build_radio() {
}

function install_radio() {
	sudo chown pi:pi -R /home/pi/.mpd
	wait
        su pi -c 'bash ~/.mpd/install/setup.sh'
}

function configure_radio() {
	setESSystem 'Radio' 'radio' '~/.mpd/OtherScripts' '.sh .SH' 'bash %ROM%' 'music' 'radio'
}
```
### Step 4
You can now run the retropie-setup script and install retropie-radio from binary or source. (It’ll be listed under experimental emulators.)
