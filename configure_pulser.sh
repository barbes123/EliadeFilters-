#!/bin/bash

e1=${1:-1}
e2=${2:-1}
e3=${3:-1}
e4=${4:-1}
e5=${5:-1}
e6=${6:-1}
e7=${7:-1}
e8=${8:-1}
e9=${9:-1}

username="eliade"

ip1="172.18.4.131"
ip2="172.18.4.132"
ip3="172.18.4.133"
ip4="172.18.4.134"
ip5="172.18.4.135"
ip6="172.18.4.136"
ip7="172.18.4.137"
ip8="172.18.4.138"
ip9="172.18.4.178"


s1="pulser/PHA_pulser_slave_S1.conf"
s2="pulser/PHA_pulser_slave_S2.conf"
s3="pulser/PHA_pulser_slave_S3.conf"
s4="pulser/PHA_pulser_slave_S4.conf"
s5="pulser/PHA_pulser_slave_S5.conf"
s6="pulser/PHA_pulser_slave_S6.conf"
s7="pulser/PHA_pulser_slave_S7.conf"
s8="pulser/PHA_pulser_slave_S8.conf"
s7_PSD="bgo/PSD_pulser.conf"

#ssh "$username"@172.18.4.131 "cd ~/DELILA && ls"

if [ "$e1" -eq "1" ]; then
	echo -n "eliadeS1 ..."
	ssh "$username"@"$ip1" "cd ~/DELILA && unlink PHA.conf"
	ssh "$username"@"$ip1" "cd ~/DELILA && ln -s  EliadeFilters/LocalFilters/$s1 PHA.conf"
	ssh "$username"@"$ip1" "cd ~/DELILA && ls -lrt PHA.conf"
	echo "done"
fi


if [ "$e2" -eq "1" ]; then
	echo -n "eliadeS2 ..."
	ssh "$username"@"$ip2" "cd ~/DELILA && unlink PHA.conf"
	ssh "$username"@"$ip2" "cd ~/DELILA && ln -s  EliadeFilters/LocalFilters/$s2 PHA.conf"
	ssh "$username"@"$ip2" "cd ~/DELILA && ls -lrt PHA.conf"
	echo "done"
fi

if [ "$e3" -eq "1" ]; then
	echo -n "eliadeS3 ..."
	ssh "$username"@"$ip3" "cd ~/DELILA && unlink PHA.conf"
	ssh "$username"@"$ip3" "cd ~/DELILA && ln -s  EliadeFilters/LocalFilters/$s3 PHA.conf"
	ssh "$username"@"$ip3" "cd ~/DELILA && ls -lrt PHA.conf"
	echo "done"
fi

if [ "$e4" -eq "1" ]; then
	echo -n "eliadeS4 ..."
	ssh "$username"@"$ip4" "cd ~/DELILA && unlink PHA.conf"
	ssh "$username"@"$ip4" "cd ~/DELILA && ln -s  EliadeFilters/LocalFilters/$s4 PHA.conf"
	ssh "$username"@"$ip4" "cd ~/DELILA && ls -lrt PHA.conf"
	echo "done"
fi

if [ "$e5" -eq "1" ]; then
	echo -n "eliadeS5 ..."
	ssh "$username"@"$ip5" "cd ~/DELILA && unlink PHA.conf"
	ssh "$username"@"$ip5" "cd ~/DELILA && ln -s  EliadeFilters/LocalFilters/$s5 PHA.conf"
	ssh "$username"@"$ip5" "cd ~/DELILA && ls -lrt PHA.conf"
	echo "done"
fi

if [ "$e6" -eq "1" ]; then
	echo -n "eliadeS6 ..."
	ssh "$username"@"$ip6" "cd ~/DELILA && unlink PHA.conf"
	ssh "$username"@"$ip6" "cd ~/DELILA && ln -s  EliadeFilters/LocalFilters/$s6 PHA.conf"
	ssh "$username"@"$ip6" "cd ~/DELILA && ls -lrt PHA.conf"
	echo "done"
fi

if [ "$e7" -eq "1" ]; then
	echo -n "eliadeS7 ..."
	ssh "$username"@"$ip7" "cd ~/DELILA && unlink PHA.conf"
	ssh "$username"@"$ip7" "cd ~/DELILA && ln -s  EliadeFilters/LocalFilters/$s7 PHA.conf"
	ssh "$username"@"$ip7" "cd ~/DELILA && ls -lrt PHA.conf	"
	
	ssh "$username"@"$ip7" "cd ~/DELILA && unlink PSD.conf"
	ssh "$username"@"$ip7" "cd ~/DELILA && ln -s  EliadeFilters/LocalFilters/$s7_PSD PSD.conf"
	ssh "$username"@"$ip7" "cd ~/DELILA && ls -lrt PSD.conf"
	
	echo "done"
fi

if [ "$e8" -eq "1" ]; then
	echo -n "eliadeS8 ..."
	ssh "$username"@"$ip8" "cd ~/DELILA && unlink PHA.conf"
	ssh "$username"@"$ip8" "cd ~/DELILA && ln -s  EliadeFilters/LocalFilters/$s8 PHA.conf"
	ssh "$username"@"$ip8" "cd ~/DELILA && ls -lrt PHA.conf"
	echo "done"
fi
