#!/bin/bash
# connect the DM6 and the MPKmini to the SR18

aconnect --removeall
aconnect e-drum   'MidiSport 1x1'
aconnect MPKmini2 'MidiSport 1x1'
aconnect --list

echo '-------'  >>/home/pi/proj/usb-to-din/connect.log
echo `date`     >>/home/pi/proj/usb-to-din/connect.log
aconnect --list >>/home/pi/proj/usb-to-din/connect.log
