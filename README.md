# midiBox

This project is a follow-on to my [miditrans](https://github.com/RobCranfill/miditrans) project. I realized it can almost all be done with Linux utils!

For full details of what I did, see the Wiki here - https://github.com/RobCranfill/midiBox/wiki

## Concept of Operations
The Pi is mostly just acting as a MIDI router, sending MIDI messages from the two inputs &mdash; the drumkit and the keyboard (used for control messages, not musical notes) &mdash; to the one output - the drum machine. This is accomplished by running a script

Since this is running "headless", we need a way to shut the Pi down nicely; this is done with a background task that watches for a pushbutton (either simple button added for this purpose, or one of the two included on the Adafruit display) and shuts the Pi down when that is pressed.

[connection diagram]


## Hardware

### The Music Gear
The music gear I am integrating is
 * Alesis DM6 e-drum kit
 * Alesis SR-16 drum machine
 * Akai MPK Mini MKII mini keyboard/pad

### Additional hardware
 * A MIDI interface; that is, a USB/MIDI interface such as the ancient MidiSport UNO that I am using.
 * A USB hub, since the RPi only has 2 USB ports, and this project needs three.
 * An Adafruit 1.3" LCD display (optional?)

## System Software
 * ASLA, for 'aconnect':
 ** 'sudo apt-get install alsa-base alsa-utils alsa-oss'
 * You may need more, depending on what's installed by default on your system. See my [miditrans](https://github.com/RobCranfill/miditrans) project.
 
## Additional Software
 * MidiSport "firmware" must be installed:
 ** 'sudo apt-get install midisport-firmware'
