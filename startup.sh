#!/bin/bash
$interface = $(ip link | awk -F: '$0 !~ "lo|vir|wl|^[^0-9]"{print $2;getline} | head -n 1)'
$date= $(date "+%Y/%m/%d %H-%M-%S")
tcpdump -i $interface -w $interface-$date.pcap