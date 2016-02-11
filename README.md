# retropie-radio
Background music for retropie using mpd, with playlist management via emulationstation. 


# Installation Steps

1.  (optional but recommended) If you'd like music to start playing at boot time, you'll need to add the following to /etc/rc.local:

        su pi -c '/home/pi/.mpd/startup_playback.sh &'


2.  You'll also need to add the following to /etc/emulationstation/es_systems.cfg:

        <system>
            <name>radio</name>
            <fullname>Radio</fullname>
            <path>/home/pi/.mpd/OtherScripts</path>
            <extension>.sh .SH</extension>
            <command>%ROM%</command>
            <platform/>
            <theme>radio</theme>
        </system>
  
  Note: This package includes a themeset for the pixel theme. Other themes are planned for a later date.
  
  
3.  After making the above changes run the following command from the terminal:

        git clone https://github.com/Labelwhore/retropie-radio.git ~/.mpd && bash ~/.mpd/install/setup.sh
