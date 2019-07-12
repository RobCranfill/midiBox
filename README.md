# midiBox

This project is a follow-on to my [miditrans](https://github.com/RobCranfill/miditrans) project. I realized it can almost all be done with Linux utils!

## Hardware

### The Music Gear
The music gear I am integrating is
 * Alesis DM6 e-drum kit
 * Alesis SR-16 drum machine
 * Akai MPK Mini MKII mini keyboard/pad

### Additional hardware
* A USB hub, since the RPi only has 2 USB ports, and I need at least three.

## System Software
(copy text from MidiDings project here)

## Additional Software
(copy text from MidiDings project here)

## MIDI configuration

    $ lsusb
    Bus 001 Device 005: ID 0763:1011 Midiman MidiSport 1x1
    Bus 001 Device 004: ID 05e3:0608 Genesys Logic, Inc. USB-2.0 4-Port HUB
    Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp. SMSC9512/9514 Fast Ethernet Adapter
    Bus 001 Device 002: ID 0424:9512 Standard Microsystems Corp. LAN9500 Ethernet 10/100 Adapter / SMSC9512/9514 Hub
    Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
  
    $ cat connect.sh
    #!/bin/bash
    # connect the DM6 and the MPKmini to the SR18
    aconnect -x
    aconnect e-drum 'MidiSport 1x1'
    aconnect MPKmini2 'MidiSport 1x1'
    aconnect -lio
    

