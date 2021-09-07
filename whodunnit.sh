#!/bin/bash
# Stalking and control tool to search all histories for a string 
# vars:
export HISTORIES=/home/*/.bash_history /root/.bash_history
#func:
whodunnit() {
         if [ -n $1 ]
         then
                  find $HISTORIES -type f -exec grep -H $1 {} \;| grep -v $0
        else
                  echo "Usage: $0 searchstring"
                  echo "searches all history files for commands"
        fi
#main:
whodunnit $1
