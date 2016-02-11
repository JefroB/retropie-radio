#!/usr/bin/env bash

# This file is part of The RetroPie Project
# 
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
# 
# See the LICENSE.md file at the top-level directory of this distribution and 
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="radio"
rp_module_desc="Radio"

function depends_radio() {
	echo no dependencies
}

function sources_radio() {
        git clone https://github.com/Labelwhore/retropie-radio.git ~/.mpd
}

function build_radio() {
	echo no need to build anything
}

function install_radio() {
        bash ~/.mpd/install/setup.sh
}

function configure_radio() {
	setESSystem 'Radio' 'radio' '~/.mpd/OtherScripts' '.sh .SH' 'bash %ROM%' 'pc' 'radio'
}
