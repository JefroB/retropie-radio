# retropie-radio
##### Description:
> Background music for retropie using mpd, with playlist management via emulationstation. 

##### Background:
> Any modern console is incomplete without background music. Background music also seemed to be a popular recent feature request on the petrockblock.com forums. Zigurana and I came up with a quick set of requirements, that I slightly changed along the way.


##### Requirements:
+ fade-out / fade-in upon starting /stopping an emulator
+ ~~volume level normalization~~
+ ~~dynamically~~ create random playlist based on files present in directory
+ creating playlists must not drastically effect boot time
+ must be lightweight, cannot effect emulator performance
+ must work with both large and small music libraries
+ hackable
+ ES integration



##### Notes:
+ _This will rename files and folders in your music collection. As always, be sure to have a backup._

+ _Complete compaitibility with music libraries ofver 10,000 .MP3s is not guaranteed. With a library of that size, you may see issues saving playlists, in particular, the "all songs" playlist_

+ For now, ES integration is achieved by means of scripts that are accessable via the emulator menu in ES. In the future, complete integration into a build of ES could be possible.

+ Volume normalization is off the table since performance is more important. There are 3rd party tools that can batch normalize your music library, look into running one of those.


---


# Installation Steps

1.   Backup your SD card, and your music collection, if it is seperate.

2.  (optional but recommended) If you'd like music to start playing at boot time, you'll need to add the following to /etc/rc.local:

        su pi -c '/home/pi/.mpd/startup_playback.sh &'


3.  You'll also need to add the following to /etc/emulationstation/es_systems.cfg:

        <system>
            <name>radio</name>
            <fullname>Radio</fullname>
            <path>/home/pi/.mpd/OtherScripts</path>
            <extension>.sh .SH</extension>
            <command>bash %ROM%</command>
            <platform/>
            <theme>radio</theme>
        </system>
  
  Note: This package includes a themeset for the pixel theme. Other themes are planned for a later date.
  
  
4.  After making the above changes run the following command from the terminal:

        git clone https://github.com/Labelwhore/retropie-radio.git ~/.mpd && bash ~/.mpd/install/setup.sh
