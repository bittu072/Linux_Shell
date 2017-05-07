#!/bin/sh


mac1="$(ifconfig wlp4s0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')"
