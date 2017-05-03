#!/bin/sh

## to install tcpdump
# apt-get install tcpdump


a=10

until [ $a -lt 10 ]
do
        now=$(date +"%T")
        echo "time : $now" >> "/home/bittu/computer/logs/trafficlog"
	# -c flag will check traffic for 30 seconds
        tcpdump -i wlp4s0 -c 30 >> /home/bittu/computer/logs/trafficlog
        sleep 3600
done
