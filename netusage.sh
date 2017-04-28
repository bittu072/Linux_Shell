#!/bin/sh

# path to save info of used data
path1=/home/computer/logs/infolog

a=10

# to loop it for infinite
until [ $a -lt 10 ]
do
        now=$(date +"%T")
        var1="$(ifconfig wlp4s0)"
	# replace "wlp4s0" with your network interface
        echo "$var1" >> "$path1"

        sleep 600
done
