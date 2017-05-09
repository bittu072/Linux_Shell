#!/bin/sh

## to install tcpdump
# apt-get install tcpdump


a=10

until [ $a -lt 10 ]
do
        t=$(date +"%T")
        echo "time : $t" >> "/home/bittu/computer/logs/trafficlog"
	# -c flag will check traffic for 30 seconds
	# added filter for the traffic
	# also can be done
	# tcpdump -i wlp4s0 src 192.168.0.1 or dst 192.168.0.1 -c 30 >> /home/bittu/computer/logs/trafficlog
        tcpdump -i wlp4s0 src 192.168.0.1 and not dst 192.168.0.1 -c 30 >> /home/bittu/computer/logs/trafficlog
        sleep 3600
done
