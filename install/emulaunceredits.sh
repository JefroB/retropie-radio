#!/bin/sh
function appendags {
	echo -e "\x1B[01;95m Checking for ags emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/ags/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/ags/emulators.cfg /opt/retropie/configs/ags/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo ags-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && xinit /opt/retropie/emulators/ags/bin/ags --fullscreen %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/ags/emulators.cfg
	fi
}

function appendamiga {
	echo -e "\x1B[01;94m Checking for amiga emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/amiga/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/amiga/emulators.cfg /opt/retropie/configs/amiga/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo uae4all-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /home/pi/RetroPie/roms/amiga/+Start\ UAE4All.sh && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/amiga/emulators.cfg
		echo uae4arm-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && pushd /opt/retropie/emulators/uae4arm/; ./uae4arm -f %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/amiga/emulators.cfg
	fi
}

function appendamstrad {
	echo -e "\x1B[01;91m Checking for amstradcpc emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/amstradcpc/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/amstradcpc/emulators.cfg /opt/retropie/configs/amstradcpc/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo capricerpi-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/capricerpi/capriceRPI %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/amstradcpc/emulators.cfg
		echo lr-caprice32-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-caprice32/cap32_libretro.so --config /opt/retropie/configs/amstradcpc/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/amstradcpc/emulators.cfg
	fi
}

function appendapple2 {
	echo -e "\x1B[31m Checking for apple2 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/apple2/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/apple2/emulators.cfg /opt/retropie/configs/apple2/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo linapple-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/configs/apple2/startlinapple.sh %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/apple2/emulators.cfg
	fi
}

function appendatari2600 {
	echo -e "\x1B[96m Checking for atari2600 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/atari2600/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/atari2600/emulators.cfg /opt/retropie/configs/atari2600/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-stella-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-stella/stella_libretro.so --config /opt/retropie/configs/atari2600/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atari2600/emulators.cfg
		echo stella-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && stella -maxres 320x240 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atari2600/emulators.cfg
	fi
}

function appendatari5200 {
	echo -e "\x1B[01;96m Checking for atari5200 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/atari5200/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/atari5200/emulators.cfg /opt/retropie/configs/atari5200/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo atari800-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/atari800/bin/atari800 -5200_rom /home/pi/RetroPie/BIOS/5200.rom %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atari5200/emulators.cfg
	fi
}

function appendatari7800 {
	echo -e "\x1B[01;92m Checking for atari7800 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/atari7800/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/atari7800/emulators.cfg /opt/retropie/configs/atari7800/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-prosystem-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-prosystem/prosystem_libretro.so --config /opt/retropie/configs/atari7800/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atari7800/emulators.cfg
	fi
}

function appendatari800 {
	echo -e "\x1B[01;95m Checking for atari800 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/atari800/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/atari800/emulators.cfg /opt/retropie/configs/atari800/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo atari800-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/atari800/bin/atari800 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atari800/emulators.cfg
	fi
}

function appendatarilynx {
	echo -e "\x1B[01;94m Checking for atarilynx emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/atarilynx/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/atarilynx /emulators.cfg /opt/retropie/configs/atarilynx/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-handy-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-handy/handy_libretro.so --config /opt/retropie/configs/atarilynx/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atarilynx/emulators.cfg
	fi
}

function appendatarist {
	echo -e "\x1B[01;91m Checking for atarist emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/atarist/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/atarist/emulators.cfg /opt/retropie/configs/atarist/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo hatari-fast-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/hatari/bin/hatari --zoom 1 --compatible 0 --timer-d 1 -w --borders 0 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atarist/emulators.cfg
		echo hatari-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/hatari/bin/hatari --zoom 1 --compatible 0 --timer-d 1 -w --borders 1 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atarist/emulators.cfg
		echo hatari-compatible-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/hatari/bin/hatari --zoom 1 --compatible 1 --timer-d 0 -w --borders 0 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atarist/emulators.cfg
		echo hatari-compatible-borders-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/hatari/bin/hatari --zoom 1 --compatible 1 --timer-d 0 -w --borders 1 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/atarist/emulators.cfg
	fi
}

function appendc128 {
	echo -e "\x1B[01;93m Checking for c128 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/c128/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/c128/emulators.cfg /opt/retropie/configs/c128/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo x128-stndrd-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c128/emulators.cfg
		echo x128-prgmode-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -autostartprgmode %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c128/emulators.cfg
		echo x128-autoload-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -autoload %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c128/emulators.cfg
		echo x128-cartcrt-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -cartcrt %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c128/emulators.cfg
		echo x128-cartap-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -cartap %ROM%" && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c128/emulators.cfg
		echo x128-auto-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -autostart %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c128/emulators.cfg
	fi
}

function appendc64 {
	echo -e "\x1B[96m Checking for c64 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/c64/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/c64/emulators.cfg /opt/retropie/configs/c64/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo vice-x64-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x64 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
	    	echo x128-stndrd-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo x128-prgmode-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -autostartprgmode %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo x128-autoload-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -autoload %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo x128-cartcrt-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -cartcrt %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo x128-cartap-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -cartap %ROM%" && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo x128-auto-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/x128 -autostart %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo xvic-carta-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cartA %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo xvic-cartb-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cartB %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo xvic-cart2-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cart2 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo xvic-cart4-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cart4 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
		echo xvic-cart6-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cart6 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/c64/emulators.cfg
	fi
}

function appendcavestory {
	echo -e "\x1B[01;96m Checking for cavestory emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/cavestory/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/cavestory/emulators.cfg /opt/retropie/configs/cavestory/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-nxengine-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-nxengine/nxengine_libretro.so --config /opt/retropie/configs/cavestory/retroarch.cfg /home/pi/RetroPie/roms/ports/CaveStory/Doukutsu.exe && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/cavestory/emulators.cfg
	fi
}

function appendcoco {
	echo -e "\x1B[01;92m Checking for coco emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/coco/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/coco/emulators.cfg /opt/retropie/configs/coco/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo xroar-coco-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/xroar/bin/xroar -machine cocous -keymap us -kbd-translate -run %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/coco/emulators.cfg
	fi
}

function appendcoleco {
	echo -e "\x1B[01;95m Checking for coleco emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/coleco/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/coleco/emulators.cfg /opt/retropie/configscoleco/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-fba-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fba/fba_libretro.so --config /opt/retropie/configs/coleco/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/coleco/emulators.cfg
		echo cool_cv-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/cool_cv/coolcv_pi %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/coleco/emulators.cfg
	fi
}

function appenddescent1 {
	echo -e "\x1B[01;94m Checking for descent1 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/descent1/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/descent1/emulators.cfg /opt/retropie/configs/descent1/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo dxx-rebirth-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/ports/dxx-rebirth/d1x-rebirth -hogdir /home/pi/RetroPie/roms/ports/descent1 && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/descent1/emulators.cfg
	fi
}

function appenddescent2 {
	echo -e "\x1B[01;91m Checking for descent2 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/descent2/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/descent2/emulators.cfg /opt/retropie/configs/descent2/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo dxx-rebirth-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/ports/dxx-rebirth/d2x-rebirth -hogdir /home/pi/RetroPie/roms/ports/descent2 && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/descent2/emulators.cfg
	fi
}

function appenddoom {
	echo -e "\x1B[31m Checking for doom Checking for emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/doom/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/doom/emulators.cfg /opt/retropie/configs/doom/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-prboom-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-prboom/prboom_libretro.so --config /opt/retropie/configs/doom/retroarch.cfg /home/pi/RetroPie/roms/ports/doom/doom1.wad && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/doom/emulators.cfg
	fi
}

function appenddragon32 {
	echo -e "\x1B[01;93m Checking for dragon32 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/dragon32/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/dragon32/emulators.cfg /opt/retropie/configs/dragon32/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo xroar-dragon32-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/xroar/bin/xroar -machine dragon32 -keymap us -kbd-translate -run %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/dragon32/emulators.cfg
	fi
}

function appenddragon64 {
	echo -e "\x1B[96m Checking for dragon64 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/dragon64/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/dragon64//emulators.cfg /opt/retropie/configs/dragon64//emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo xroar-dragon64-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/xroar/bin/xroar -machine dragon64 -keymap us -kbd-translate -run %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/dragon64/emulators.cfg
	fi
}

function appenddreamcast {
	echo -e "\x1B[01;96m Checking for dreamcast emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/dreamcast/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/dreamcast /emulators.cfg /opt/retropie/configs/dreamcast /emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo reicast-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/reicast/bin/reicast.sh OSS %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/dreamcast/emulators.cfg
	fi
}

function appendduke3d {
	echo -e "\x1B[01;92m Checking for duke3d emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/duke3d/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/duke3d/emulators.cfg /opt/retropie/configs/duke3d/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo eduke32-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/ports/eduke32/eduke32 -j/home/pi/RetroPie/roms/ports/duke3d && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/duke3d/emulators.cfg
	fi
}

function appendfba {
	echo -e "\x1B[01;95m Checking for fba emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/fba/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/fba/emulators.cfg /opt/retropie/configs/fba/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo pifba-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/pifba/fba2x %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/fba/emulators.cfg
		echo lr-fba-next-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fba-next/fba_libretro.so --config /opt/retropie/configs/fba/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/fba/emulators.cfg
		echo lr-fba-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fba/fb_alpha_libretro.so --config /opt/retropie/configs/fba/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/fba/emulators.cfg
	fi
}

function appendfds {
	echo -e "\x1B[01;94m Checking for fds emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/fds/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/fds/emulators.cfg /opt/retropie/configs/fds/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-nestopia-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-nestopia/nestopia_libretro.so --config /opt/retropie/configs/fds/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/fds/emulators.cfg
	fi
}

function appendgameandwatch {
	echo -e "\x1B[01;91m Checking for gameandwatch emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/gameandwatch/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/gameandwatch/emulators.cfg /opt/retropie/configs/gameandwatch/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-gw-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-gw/gw_libretro.so --config /opt/retropie/configs/gameandwatch/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gameandwatch/emulators.cfg
	fi
}

function appendgamegear {
	echo -e "\x1B[31m Checking for gamegear emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/gamegear/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/gamegear/emulators.cfg /opt/retropie/configs/gamegear/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo osmose-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/osmose/osmose %ROM% -tv -fs && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gamegear/emulators.cfg
		echo lr-genesis-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-genesis-plus-gx/genesis_plus_gx_libretro.so --config /opt/retropie/configs/gamegear/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gamegear/emulators.cfg
	fi
}

function appendgb {
	echo -e "\x1B[01;93m Checking for gb emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/gb/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/gb/emulators.cfg /opt/retropie/configs/gb/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-gambatte-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-gambatte/gambatte_libretro.so --config /opt/retropie/configs/gb/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gb/emulators.cfg
		echo lr-tgbdual-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-tgbdual/tgbdual_libretro.so --config /opt/retropie/configs/gb/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gb/emulators.cfg
	fi
}

function appendgba {
	echo -e "\x1B[96m Checking for gba emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/gba/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/gba/emulators.cfg /opt/retropie/configs/gba/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo gpsp-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/gpsp/gpsp %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gba/emulators.cfg
		echo lr-gpsp-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-gpsp/gpsp_libretro.so --config /opt/retropie/configs/gba/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gba/emulators.cfg
		echo lr-mgba-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mgba/mgba_libretro.so --config /opt/retropie/configs/gba/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gba/emulators.cfg
		echo vba-nxt-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-vba-next/vba_next_libretro.so --config /opt/retropie/configs/gba/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gba/emulators.cfg
	fi
}

function appendgbc {
	echo -e "\x1B[01;96m Checking for gbc emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/gbc/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/gbc/emulators.cfg /opt/retropie/configs/gbc/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-gambatte-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-gambatte/gambatte_libretro.so --config /opt/retropie/configs/gbc/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gbc/emulators.cfg
		echo lr-tgbdual-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-tgbdual/tgbdual_libretro.so --config /opt/retropie/configs/gbc/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/gbc/emulators.cfg
	fi
}

function appendintellivision {
	echo -e "\x1B[01;92m Checking for intellivision emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/intellivision/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/intellivision/emulators.cfg /opt/retropie/configs/intellivision/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo jzintv-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/jzintv/bin/jzintv -p /home/pi/RetroPie/BIOS -q %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/
	fi
}

function appendkodi {
	echo -e "\x1B[01;95m Checking for kodi. \x1B[0m"
	if [ -f "/opt/retropie/configs/kodi/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/kodi/emulators.cfg /opt/retropie/configs/kodi/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run kodi. \x1B[0m"
    		echo kodi-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && kodi-standalone && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/kodi/emulators.cfg
	fi
}

function appendmame-advmame {
	echo -e "\x1B[01;91m Checking for mame-advmame emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/mame-advmame/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/mame-advmame/emulators.cfg /opt/retropie/configs/mame-advmame/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo advmame-0.94fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && mpc volume 77 && /opt/retropie/emulators/advmame/0.94.0/bin/advmame %BASENAME% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mame-advmame/emulators.cfg
		echo advmame-1.4-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && mpc volume 77 && /opt/retropie/emulators/advmame/1.4/bin/advmame %BASENAME% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mame-advmame/emulators.cfg
	fi
}

function appendadvmess {
	echo -e "\x1B[31m Checking for mame-advmess emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/mame-advmess/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/mame-advmess/emulators.cfg /opt/retropie/configs/mame-advmess/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo advmess-0.94fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && mpc volume 77 && /opt/retropie/emulators/advmess/0.94.0/bin/advmame %BASENAME% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mame-advmess/emulators.cfg
		echo advmess-1.4-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && mpc volume 77 && /opt/retropie/emulators/advmess/1.4/bin/advmame %BASENAME% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mame-advmess/emulators.cfg
	fi
}

function appendmame-libretro {
	echo -e "\x1B[01;93m Checking for mame-libretro emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/mame-libretro/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/mame-libretro/emulators.cfg /opt/retropie/configs/mame-libretro/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-mame2003-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame2003/mame2003_libretro.so --config /opt/retropie/configs/mame-libretro/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mame-libretro/emulators.cfg
		echo lr-mame20010-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame2010/mame2010_libretro.so --config /opt/retropie/configs/mame-libretro/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mame-libretro/emulators.cfg
	fi
}

function appendmame-mame4all {
	echo -e "\x1B[96m Checking for mame-mame4all emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/mame-mame4all/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/mame-mame4all/emulators.cfg /opt/retropie/configs/mame-mame4all/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo mame4all-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/mame4all/mame %BASENAME% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mame-mame4all/emulators.cfg
		echo lr-imame4all-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-imame4all/mame2000_libretro.so --config /opt/retropie/configs/mame-mame4all/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mame-mame4all/emulators.cfg
	fi
}

function appendmastersystem {
	echo -e "\x1B[01;96m Checking for mastersystem Checking for emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/mastersystem/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/mastersystem/emulators.cfg /opt/retropie/configs/mastersystem/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo osmose-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/osmose/osmose %ROM% -tv -fs && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mastersystem/emulators.cfg
		echo lr-gen-plus-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-genesis-plus-gx/genesis_plus_gx_libretro.so --config /opt/retropie/configs/mastersystem/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mastersystem/emulators.cfg
		echo lr-picodrive-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-picodrive/picodrive_libretro.so --config /opt/retropie/configs/mastersystem/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/mastersystem/emulators.cfg
	fi
}

function appendmegadrive {
	echo -e "\x1B[01;92m Checking for megadrive emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/megadrive/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/megadrive/emulators.cfg /opt/retropie/configs/megadrive/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo dgen-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/dgen/bin/dgen -r /opt/retropie/configs/megadrive/dgenrc %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/megadrive/emulators.cfg
		echo lr-gen-plus--fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-genesis-plus-gx/genesis_plus_gx_libretro.so --config /opt/retropie/configs/megadrive/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/megadrive/emulators.cfg
		echo lr-picodrive-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-picodrive/picodrive_libretro.so --config /opt/retropie/configs/megadrive/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/megadrive/emulators.cfg
	fi
}

function appendminecraft {
	echo -e "\x1B[01;94m Checking for minecraft emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/minecraft/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/minecraft/emulators.cfg /opt/retropie/configs/minecraft/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo minecraft-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && xinit "'/opt/retropie/ports/minecraft/Minecraft.sh'" && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/minecraft/emulators.cfg
	fi
}

function appendmsx {
	echo -e "\x1B[01;94m Checking for msx emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/msx/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/msx/emulators.cfg /opt/retropie/configs/msx/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-bluemsx-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-bluemsx/bluemsx_libretro.so --config /opt/retropie/configs/msx/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/msx/emulators.cfg
		echo lr-fmsx-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fmsx/fmsx_libretro.so --config /opt/retropie/configs/msx/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/msx/emulators.cfg
	fi
}

function appendn64 {
	echo -e "\x1B[01;91m Checking for n64 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/n64/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/n64/emulators.cfg /opt/retropie/configs/n64/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo gles2n64-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/mupen64plus/bin/mupen64plus.sh mupen64plus-video-n64 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/n64/emulators.cfg
		echo gles2rice-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/mupen64plus/bin/mupen64plus.sh mupen64plus-video-rice %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/n64/emulators.cfg
		echo GLideN64-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/mupen64plus/bin/mupen64plus.sh mupen64plus-video-GLideN64 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/n64/emulators.cfg
		echo lr-mupen64plus-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mupen64plus/mupen64plus_libretro.so --config /opt/retropie/configs/n64/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/n64/emulators.cfg
	fi
}

function appendneogeo {
	echo -e "\x1B[31m Checking for neogeo emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/neogeo/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/neogeo/emulators.cfg /opt/retropie/configs/neogeo/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo gngeopi-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/gngeopi/bin/gngeo -i /home/pi/RetroPie/roms/neogeo -B /opt/retropie/emulators/gngeopi/neogeobios %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/neogeo/emulators.cfg
		echo pifba-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/pifba/fba2x %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/neogeo/emulators.cfg
		echo lr-fba-nex-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fba-next/fba_libretro.so --config /opt/retropie/configs/neogeo/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/neogeo/emulators.cfg
		echo lr-fba-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fba/fb_alpha_libretro.so --config /opt/retropie/configs/neogeo/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/neogeo/emulators.cfg
	fi
}

function appendnes {
	echo -e "\x1B[01;93m Checking for nes emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/nes/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/nes/emulators.cfg /opt/retropie/configs/nes/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-fceumm-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fceumm/fceumm_libretro.so --config /opt/retropie/configs/nes/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/nes/emulators.cfg
		echo lr-nestopia-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-nestopia/nestopia_libretro.so --config /opt/retropie/configs/nes/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/nes/emulators.cfg
	fi
}

function appendngp {
	echo -e "\x1B[96m Checking for ngp emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/ngp/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/ngp/emulators.cfg /opt/retropie/configs/ngp/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo mednfn-ngp-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mednafen-ngp/mednafen_ngp_libretro.so --config /opt/retropie/configs/ngp/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/ngp/emulators.cfg
	fi
}

function appendopentdd {
	echo -e "\x1B[01;96m Checking for opentdd emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/openttd/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/openttd/emulators.cfg /opt/retropie/configs/openttd/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo openttd-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && openttd && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/openttd/emulators.cfg
	fi
}

function appendpc {
	echo -e "\x1B[01;92m Checking for pc emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/pc/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/pc/emulators.cfg /opt/retropie/configs/pc/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo dosbox-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/pc/emulators.cfg
		echo rpix86-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /home/pi/RetroPie/roms/pc/+Start\ rpix86.sh %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/pc/emulators.cfg
	fi
}

function appendpcengine {
	echo -e "\x1B[01;95m Checking for pcengine emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/pcengine/emulators.cfg" ]
	then 
		cp /opt/retropie/configs//pcengine/emulators.cfg /opt/retropie/configs//pcengine/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo mednafen-pce-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mednafen-pce-fast/mednafen_pce_fast_libretro.so --config /opt/retropie/configs/pcengine/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/pcengine/emulators.cfg
		echo beetle-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-beetle-supergrafx/mednafen_supergrafx_libretro.so --config /opt/retropie/configs/pcengine/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/pcengine/emulators.cfg
	fi
}

function appendpet {
	echo -e "\x1B[01;94m Checking for pet emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/pet/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/pet/emulators.cfg /opt/retropie/configs/pet/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo vice-xpet-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xpet %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/pet/emulators.cfg
	fi
}

function appendpsp {
	echo -e "\x1B[01;94m Checking for psp emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/psp/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/psp/emulators.cfg /opt/retropie/configs/psp/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo ppsspp-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/ppsspp/PPSSPPSDL %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/psp/emulators.cfg
		echo lr-ppsspp-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-ppsspp/ppsspp_libretro.so --config /opt/retropie/configs/psp/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/psp/emulators.cfg
	fi
}

function appendpsx {
	echo -e "\x1B[01;94m Checking for psx emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/psx/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/psx/emulators.cfg /opt/retropie/configs/psx/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo pcsx-rearmed-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-pcsx-rearmed/libretro.so --config /opt/retropie/configs/psx/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/psx/emulators.cfg
	fi
}

function appendquake {
	echo -e "\x1B[01;91m Checking for quake emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/quake/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/quake/emulators.cfg /opt/retropie/configs/quake/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-tyrquake-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-tyrquake/tyrquake_libretro.so --config /opt/retropie/configs/quake/retroarch.cfg /home/pi/RetroPie/roms/ports/quake/id1/pak0.pak && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/quake/emulators.cfg
	fi
}

function appendquake3 {
	echo -e "\x1B[01;91m Checking for quake 3 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/quake3/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/quake3/emulators.cfg /opt/retropie/configs/quake3/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo quake3-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && LD_LIBRARY_PATH=lib /opt/retropie/ports/quake3/ioquake3.arm && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/quake3/emulators.cfg
	fi
}


function appendscummvm {
	echo -e "\x1B[01;91m Checking for scummvm emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/scummvm/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/scummvm/emulators.cfg /opt/retropie/configs/scummvm/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo scummvm-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /home/pi/RetroPie/roms/scummvm/+Start\ ScummVM.sh %BASENAME% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/scummvm/emulators.cfg
	fi
}

function appendsega32x {
	echo -e "\x1B[01;91m Checking for sega32x emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/sega32x/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/sega32x/emulators.cfg /opt/retropie/configs/sega32x/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo dgen-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/dgen/bin/dgen -r /opt/retropie/configs/megadrive/dgenrc %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/sega32x/emulators.cfg
		echo lr-picodrive-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-picodrive/picodrive_libretro.so --config /opt/retropie/configs/sega32x/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/sega32x/emulators.cfg
	fi
}

function appendsegacd {
	echo -e "\x1B[01;91m Checking for segacd emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/segacd/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/segacd/emulators.cfg /opt/retropie/configs/segacd/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo dgen-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/dgen/bin/dgen -r /opt/retropie/configs/megadrive/dgenrc %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/segacd/emulators.cfg
		echo gen-plus-gx-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-genesis-plus-gx/genesis_plus_gx_libretro.so --config /opt/retropie/configs/segacd/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/segacd/emulators.cfg
		echo lr-picodrive-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-picodrive/picodrive_libretro.so --config /opt/retropie/configs/segacd/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/segacd/emulators.cfg
	fi
}

function appendsg-1000 {
	echo -e "\x1B[01;91m Checking for sg-1000 emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/sg-1000/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/sg-1000/emulators.cfg /opt/retropie/configs/sg-1000/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo gen-plus-gx-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-genesis-plus-gx/genesis_plus_gx_libretro.so --config /opt/retropie/configs/sg-1000/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/sg-1000/emulators.cfg
	fi
}

function appendsmw {
	echo -e "\x1B[31m Checking for smw emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/smw/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/smw/emulators.cfg /opt/retropie/configs/smw/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo smw-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/ports/smw/smw && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/smw/emulators.cfg
	fi
}

function appendsnes {
	echo -e "\x1B[01;93m Checking for snes emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/snes/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/snes/emulators.cfg /opt/retropie/configs/snes/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo pisnes-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/pisnes/snes9x %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/snes/emulators.cfg
		echo snes9x-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/snes9x/snes9x %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/snes/emulators.cfg
		echo lr-armsnes-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-armsnes/libpocketsnes.so --config /opt/retropie/configs/snes/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/snes/emulators.cfg
		echo lr-catsfc-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-catsfc/catsfc_libretro.so --config /opt/retropie/configs/snes/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/snes/emulators.cfg
		echo lr-pocketsnes-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-pocketsnes/pocketsnes_libretro.so --config /opt/retropie/configs/snes/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/snes/emulators.cfg
		echo lr-snes9x-next-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-snes9x-next/snes9x_next_libretro.so --config /opt/retropie/configs/snes/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/snes/emulators.cfg
	fi
}

function appendvectrex {
	echo -e "\x1B[96m Checking for vectrex emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/vectrex/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/vectrex/emulators.cfg /opt/retropie/configs/vectrex/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-vecx-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-vecx/vecx_libretro.so --config /opt/retropie/configs/vectrex/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/vectrex/emulators.cfg
	fi
}

function appendvic20 {
	echo -e "\x1B[01;96m Checking for vic20 Checking for emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/vic20/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/vic20/emulators.cfg /opt/retropie/configs/vic20/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo xvic-carta-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cartA %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/vic20/emulators.cfg
		echo xvic-cartb-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cartB %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/vic20/emulators.cfg
		echo xvic-cart2-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cart2 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/vic20/emulators.cfg
		echo xvic-cart4-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cart4 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/vic20/emulators.cfg
		echo xvic-cart6-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/vice/bin/xvic -cart6 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/vic20/emulators.cfg
	fi
}

function appendvideopac {
	echo -e "\x1B[01;92m Checking for videopac emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/videopac/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/videopac/emulators.cfg /opt/retropie/configs/videopac/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo lr-o2em-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-o2em/o2em_libretro.so --config /opt/retropie/configs/videopac/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/videopac/emulators.cfg
	fi
}

function appendvirtualboy {
	echo -e "\x1B[01;95m Checking for virtualboy emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/virtualboy/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/virtualboy/emulators.cfg /opt/retropie/configs/virtualboy/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo beetle-vb-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-beetle-vb/mednafen_vb_libretro.so --config /opt/retropie/configs/virtualboy/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/virtualboy/emulators.cfg
	fi
}

function appendwonderswan {
	echo -e "\x1B[01;94m Checking for wonderswan emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/wonderswan/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/wonderswan/emulators.cfg /opt/retropie/configs/wonderswan/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo mednfn-wswan-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mednafen-wswan/mednafen_wswan_libretro.so --config /opt/retropie/configs/wonderswan/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/wonderswan/emulators.cfg
	fi
}

function appendzxspectrum {
	echo -e "\x1B[01;91m Checking for zxspectrum emulator. \x1B[0m"
	if [ -f "/opt/retropie/configs/zxspectrum/emulators.cfg" ]
	then 
		cp /opt/retropie/configs/zxspectrum/emulators.cfg /opt/retropie/configs/zxspectrum/emulators.cfg.bak
		wait
    		echo -e "\x1B[01;90m Appending emulators.cfg file. Please choose new emulator option next time you run this emulator. \x1B[0m"
    		echo fbzx-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/fbzx/fbzx %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/zxspectrum/emulators.cfg
		echo fuse-48k-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/fuse/bin/fuse --machine 48 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/zxspectrum/emulators.cfg
		echo fuse-128k-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/fuse/bin/fuse --machine 128 %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/zxspectrum/emulators.cfg
		echo lr-fuse-fade='"bash /home/pi/.mpd/OtherScripts/stop_playback.sh && /opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fuse/fuse_libretro.so --config /opt/retropie/configs/zxspectrum/retroarch.cfg %ROM% && bash /home/pi/.mpd/OtherScripts/start_playback.sh"' >>/opt/retropie/configs/zxspectrum/emulators.cfg
	fi
}
function quit {
	exit 0
}
appendadvmess
appendags
appendamiga
appendamstrad
appendapple2
appendatari2600
appendatari5200
appendatari7800
appendatari800
appendatarilynx
appendatarist
appendc128
appendc64
appendcavestory
appendcoco
appendcoleco
appenddescent1
appenddescent2
appenddoom
appenddragon32
appenddragon64
appenddreamcast
appendduke3d
appendfba
appendfds
appendgameandwatch
appendgamegear
appendgb
appendgba
appendgbc
appendintellivision
appendkodi
appendmame-advmame
appendmame-libretro
appendmame-mame4all
appendmastersystem
appendmegadrive
appendminecraft
appendmsx
appendn64
appendneogeo
appendnes
appendngp
appendopentdd
appendpc
appendpcengine
appendpet
appendpsp
appendpsx
appendquake
appendquake3
appendscummvm
appendsega32x
appendsegacd
appendsg-1000
appendsmw
appendsnes
appendvectrex
appendvic20
appendvideopac
appendvirtualboy
appendwonderswan
appendzxspectrum
quit
# eof