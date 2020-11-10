#!/data/data/com.termux/files/usr/bin/bash
# Values for your knockd open and close sequences
KNOCK_OPEN='croyddns.hopto.org 1999:udp 3842:tcp 6321:udp -d 500'
KNOCK_CLOSE='croyddns.hopto.org 4999:udp 8642:udp 9321:tcp -d 500'

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