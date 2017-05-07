#!/bin/sh

# path to save info of used data
path1=/home/bittu/computer/logs/infolog
path2=/home/bittu/computer/logs/RxTxlog

a=10

# to loop it for infinite
until [ $a -lt 10 ]
do
        now=$(date +"%T")
        tempvar="$(ifconfig wlp4s0)"
	# replace "wlp4s0" with your network interface
	# saves all the info of that interface
        echo "$tempvar" >> "$path1"

	#save just RX and TX of the interface
	inf="$(grep "RX bytes" $path1)"
	echo "time : $now" >> "$path2"
	echo "$inf" >> "$path2"
	echo " " >> "$path2"

	sleep 600
done
