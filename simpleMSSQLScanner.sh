#! /bin/bash

#in lieu of subnet
echo "Enter starting IP address: "
read firstIP

echo "Enter last octet of last address: "
read lastOctetIP

#MSSQL port 1433
echo "Enter port you want to scan for: "
read port

nmap -sT $firstIP-$lastOctetIP -p $port -oG MSSQLScanner >/dev/null

cat MSSQLScanner | grep open >MSSQLScannerResults

cat MSSQLScannerResults
