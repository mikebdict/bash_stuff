#!/data/data/com.termux/files/usr/bin/bash

# Values for your knockd open and close sequences to be used by knockd. See man
# knock for more info 
KNOCK_OPEN='(host /ip) port:protocol... -d (n)'
KNOCK_CLOSE='(host /ip) port:protocol... -d (n)'

# Simple loop to open / shut the ports with termux_knock.sh -o / -c
for switch in "$@"; do
    case $switch in
        -o)
        echo $KNOCK_OPEN
        knock $KNOCK_OPEN
        ;;
        -c)
        echo $KNOCK_CLOSE
        knock $KNOCK_CLOSE
        ;;
    esac
done