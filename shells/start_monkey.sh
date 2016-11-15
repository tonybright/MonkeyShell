#!/bin/bash 
rm -f sdcard/monkey.log
rm -f sdcard/monkey_logcat.log
/system/bin/sh /sdcard/monkey_random.sh &
/system/bin/sh /sdcard/monkey_logcat.sh &