#!/bin/bash
rm -f /sdcard/monkey/monkey.log
rm -f /sdcard/monkey/monkey_logcat.log
/system/bin/sh /sdcard/monkey/monkey_random.sh &
/system/bin/sh /sdcard/monkey/monkey_logcat.sh &