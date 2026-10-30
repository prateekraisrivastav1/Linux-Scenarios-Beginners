#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q4: Inspect firewall rules ==="
echo "Objective: Discover which firewall tooling is present and inspect rules without changing them."
echo "TASK:"
echo "1. Check whether ufw, nftables or iptables is available."
echo "2. Display current rules using the available tool."
echo "3. Explain why an open listening port does not necessarily mean it is reachable."
echo "Do not flush rules or disable the firewall."
echo
if command -v ufw >/dev/null 2>&1; then ufw status verbose || true; fi
if command -v nft >/dev/null 2>&1; then nft list ruleset 2>/dev/null || true; fi
if command -v iptables >/dev/null 2>&1; then iptables -S 2>/dev/null || true; fi
