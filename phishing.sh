#!/bin/bash


# https://www.whatismybrowser.com/detect/what-is-my-user-agent
$UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36"
$URL=""

echo "Starting the enumeration of $URL using gobuster"
gobuster dir -u $URL -w directory-list-2.3-small.txt -o gobuster_raft.txt
