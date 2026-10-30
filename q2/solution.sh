#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q2 — Routes and default gateway ==="
ip route
GW="$(ip route | awk '/^default/ {print $3; exit}')"
[ -z "$GW" ] || ping -c 2 -W 2 "$GW" || true
