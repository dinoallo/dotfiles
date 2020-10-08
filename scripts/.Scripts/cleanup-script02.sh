#!/bin/bash
# Cleanup, version 2

# Insert code here to print error message and exit if not root.

LOG_DIR=/var/log
cd $LOG_DIR

cat /dev/null > messages
cat /dev/null > wtmp

echo "Logs cleaned up."
exit # The right and proper method of "exiting" from a script.x
