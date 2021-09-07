#!/bin/bash
# Stalking and control tool to search all histories for a string
# vars:
export HISTORIES="/home/*/.bash_history /root/.bash_history"
export SEARCHSTRING=$1
#func:
whodunnit() {
             find $HISTORIES -type f -exec grep -H $SEARCHSTRING {} \; \
             |awk -F: '{ print $1,"  -  ",$2}'
            }
#main:
if [ -n "$SEARCHSTRING" ]
then
  whodunnit $SEACRHSTRING | grep -v `basename $0`
else
  echo "Usage: $0 searchstring"
  echo "searches all history files for commands"
  exit 2
fi
