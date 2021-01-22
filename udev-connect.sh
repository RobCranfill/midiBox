#!/bin/bash
# script to handle insertion of either DM6 or MidiMan
# args: "add"|"remove"

if [ $# -eq 0 ]
  then
    echo "$0: No arguments supplied; should be 'add' or 'remove'"
    exit 1
fi

COMMAND=$1

if [ $COMMAND == "add" ]
  then
  aconnect --removeall
  aconnect e-drum   'MidiSport 1x1'
  echo   "Re-connected DM6 to MidiMan at `date`"
  logger "Re-connected DM6 to MidiMan at `date`"
fi

if [ $COMMAND == "remove" ]
  then
  aconnect --removeall
  echo   "Removed connections at `date`"
  logger "Removed connections at `date`"
fi

