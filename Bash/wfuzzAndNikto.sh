#!/bin/bash
# Created by Netl0ader - Jun Sat 17 16:29:46
# PoIm _> Possible Improvement

wfuzzPath='/path/to/wfuzz.py'
#Maybe I will loop through all the files in the wordlist folder and use them all? Didn't check if its possible with wfuzz. PoIm
wfuzzDictionary='/path/to/wordlist/general/big.txt'

#Setting if HTTPS or HTTP (default HTTP)
if [[ $2 -eq 'https' ]]; then
        method="https"
else
        method="http"
fi


if [[ ! $1  || $1  == *"http"* ]]; then
        echo -e "\nUSAGE: $0 <IP TARGET> [http/https] default: HTTP"
        echo -e "No entire path accepted. Just IP.\n"
        echo -e "E.g: $0 127.0.0.1 https\n"
else

        mkdir $1
        cd $1


#Execute it
        python $wfuzzPath -c --hc 404 -z file,$wfuzzDictionary $method://$1/FUZZ
        nikto -h $1
#Save into files (For report)

       python $wfuzzPath -c --hc 404 -z file,$wfuzzDictionary $method://$1/FUZZ >> wfuzz_report
       nikto -h $1 >> nikto_report
fi
