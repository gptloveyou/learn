#!/bin/sh

report_url="http://report.dataplan.online:19188/9024134B28978B68666E2B034E46130E/debug"
 
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
 
