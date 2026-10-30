#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q1: Inspect network interfaces ==="
echo "Objective: Identify your network interfaces, IPv4 address and link state."
echo "TASK:"
echo "1. List interfaces and their state."
echo "2. Find the IPv4 address assigned to the primary interface."
echo "3. Record the interface name and address."
echo
ip -br link 2>/dev/null || ip link
ip -br addr 2>/dev/null || ip addr
