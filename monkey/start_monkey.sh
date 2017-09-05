#!/bin/bash
rm -f monkey.log
rm -f monkey_logcat.log
/system/bin/sh monkey_random.sh &
/system/bin/sh monkey_logcat.sh &
