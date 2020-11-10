#!/bin/bash


# https://www.whatismybrowser.com/detect/what-is-my-user-agent
USERAGENT="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36"
URL=""
ATTACKID=

echo "Starting the enumeration of $URL using gobuster"
gobuster dir -u $URL -w raft-small-directories.txt -o gobuster_raft.txt
# --wildcard : Force continued operation when wildcard found
gobuster dns -d keytrade-bk.eu -t 8 -r 8.8.8.8 -w subdomains-top1million-20000.txt -o "$AttackID"_GoBusterSub.txt
gobuster dir -u https://keytrade-bk.eu --timeout 25s 2s -t 5 -w /usr/share/seclists/Discovery/Web-Content/raft-large-files.txt > GoBusterFiles.txt

httrack --robots=0 --keep-links=0 --mirror -F "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36" -v -O "/AttackID" https://keytrade-bk.eu/ -* +keytrade-bk.eu/*



