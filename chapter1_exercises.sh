ifconfig >ifconfig.out

ifconfig >results.out >>ipaddress.txt

#Standard error can be redirected using file descriptor 2.
cp -R /etc/a /etc/b 2>error.log

bash mytask &

fg 2
