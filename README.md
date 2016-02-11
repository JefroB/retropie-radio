# retropie-radio
Background music for retropie using mpd, with playlist management via emulationstation. 




  To install from commonad line on raspberry pi run the following command:

    git clone https://github.com/Labelwhore/retropie-radio.git ~/.mpd && bash ~/.mpd/install/setup.sh




  If you'd like music to start playing at boot time, you'll need to add the following to /etc/rc.local:

    su fakeuser -c '/home/pi/.mpd/startup_playback.sh &'



  You'll also need to add the following to /etc/emulationstation/es_systems.cfg:

      <system>
        <name>radio</name>
        <fullname>Radio</fullname>
        <path>/home/pi/.mpd/OtherScripts</path>
        <extension>.rp .sh</extension>
        <command>%ROM%</command>
        <platform/>
        <theme>radio</theme>
      </system>
  
  This package includes a themeset for the pixel theme. Other themes are planned for a later date.
