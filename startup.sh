#!/bin/bash
interface=$(ip link | awk -F: '$0 !~ "lo|vir|wl|^[^0-9]"{print $2;getline}' | head -n 1 | xargs)
date=$(date "+%Y-%m-%d_%H-%M-%S")
tcpdump -i $interface -w $interface_$date.pcap