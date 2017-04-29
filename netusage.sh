#!/bin/sh

# path to save info of used data
path1=/home/bittu/computer/logs/infolog
path2=/home/bittu/computer/logs/RxTxlog

a=10

# to loop it for infinite
until [ $a -lt 10 ]
do
        now=$(date +"%T")
        var1="$(ifconfig wlp4s0)"
	# replace "wlp4s0" with your network interface
	# saves all the info of that interface
        echo "$var1" >> "$path1"

	#save just RX and TX of the interface
	info="$(grep "RX bytes" $path1)"
	echo "time : $now" >> "$path2"
	echo "$info" >> "$path2"
	echo " " >> "$path2"

	sleep 600
done
