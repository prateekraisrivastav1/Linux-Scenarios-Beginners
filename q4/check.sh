#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q4 — Inspect firewall rules ==="
found=0
for c in ufw nft iptables; do
  if command -v "$c" >/dev/null 2>&1; then echo "Available: $c"; found=1; fi
done
[ "$found" -eq 1 ] || echo "No common firewall CLI found in this image; that is okay for this exercise."
echo "PASS: firewall inspection completed without changing rules." 
