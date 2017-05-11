#!/bin/sh


mac1="$(ifconfig wlp4s0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')"
# replace wlp4s0 with other interface.. wlp4s0 usually shows wireless mac address

echo "$mac1"
