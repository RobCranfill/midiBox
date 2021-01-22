#!/bin/bash
# show MIDI notes coming from DM6

aseqdump -p 20:0 | grep --invert-match "Active Sensing"
