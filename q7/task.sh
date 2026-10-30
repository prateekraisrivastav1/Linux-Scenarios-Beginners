#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q7: DNS resolver configuration ==="
echo "Objective: Inspect which DNS resolver your Linux environment uses and perform a hostname lookup."
echo "TASK:"
echo "1. Inspect /etc/resolv.conf."
echo "2. Find the configured nameserver(s) or resolver stub."
echo "3. Resolve example.com with getent hosts."
echo "4. Explain the role of a DNS resolver."
echo
cat /etc/resolv.conf 2>/dev/null || echo "/etc/resolv.conf is not readable."
getent hosts example.com || echo "Lookup failed; DNS/network access may be restricted." 
