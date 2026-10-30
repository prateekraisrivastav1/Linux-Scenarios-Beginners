#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q2: Routes and default gateway ==="
echo "Objective: Read the routing table and understand the default route."
echo "TASK:"
echo "1. Display the routing table."
echo "2. Find the default route and note its gateway and interface."
echo "3. If permitted, ping the gateway once or twice."
echo
ip route
echo
echo "Gateway reachability is optional; ICMP may be blocked in the lab." 
