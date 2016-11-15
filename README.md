# MonkeyShell
a handy monkey shell for android apk, works well **without root permission**   


  firstly, modify the package name in the monkey_random.sh(with random seed) and monkey.sh(with fixed seed) for your apk,   
currently it’s com.zhiliaoapp.musically.  

  secondly, execute following commands to copy the shells to phone’s sdcard:  
    1. adb push shells’directory sdcard/  
    2. adb shell  
    3. sh sdcard/start_monkey.sh  

  finally, execute following commands to capture monkey-logs:  
    1. adb pull sdcard/monkey.log ~/Desktop  
    2. adb push sdcard/monkey_logcat.log  ~/Desktop  
 
  Some Notes:  
    the monkey.log contains the crash and anr traces information, 
    the monkey_logcat contains all logcats when running the monkey, it’s huge size,
    in general case, monkey.log is sufficient to analyze the critical information.  

  if you wanna interrupt monkey in the process, run commands as follows:  
ps | grep ‘monkey’, kill the process with pid  
