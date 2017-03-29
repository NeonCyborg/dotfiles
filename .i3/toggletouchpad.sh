#!/bin/bash
if [[ $(xinput list-props "SynPS/2 Synaptics TouchPad" | awk '/Device Enabled/ {print $4}') == "0" ]] ; then
    xinput enable "SynPS/2 Synaptics TouchPad" ;
else
    xinput disable "SynPS/2 Synaptics TouchPad" ;
fi

