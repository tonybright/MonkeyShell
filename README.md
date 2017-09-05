# MonkeyShell
a handy monkey shell for android apk, works well **without root permission**   


  firstly, modify the package name in the **monkey_random.sh**(with random seed) for your apk, currently it’s com.zhiliaoapp.musically.  

  secondly, execute following commands to copy the shells to phone’s sdcard:  
    1. adb push monkey-entire-directory /data/local/tmp  
    2. adb shell  
    3. cd /data/local/tmp/monkey  
    3. sh sh start_monkey.sh  

  finally, execute following commands to capture monkey-logs:  
    1. adb pull /data/local/tmp/monkey/monkey.log ~/Desktop  
    2. adb pull /data/local/tmp/monkey/monkey_logcat.log  ~/Desktop  
 
  Some Notes:  
    the monkey.log contains the crash and anr traces information, 
    the monkey_logcat contains all logcats when running the monkey, it’s huge size,
    in general case, monkey.log is sufficient to analyze the critical information.  

  if you wanna interrupt monkey in the process, run commands as follows:  
ps | grep ‘monkey’, kill the process with pid  
