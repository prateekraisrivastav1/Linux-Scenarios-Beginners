#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q4 — Inspect firewall rules ==="
command -v ufw >/dev/null 2>&1 && ufw status verbose || true
command -v nft >/dev/null 2>&1 && nft list ruleset || true
command -v iptables >/dev/null 2>&1 && iptables -S || true
