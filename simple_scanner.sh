#! /bin/bash

#find hosts with MySQL installed
#nmap <type of scan> <target IP> <optional: target port>

echo "Enter starting IP address: "
read firstIP

echo "Enter last octet of last IP address: "
read lastOctetIP

echo "Enter port number you want to scan for: "
read port

nmap -sT $firstIP-$lastOctetIP -p $port -oG MySQLscan >/dev/null

cat MySQLscan | grep open >MySQLscanResults

cat MySQLscanResults
