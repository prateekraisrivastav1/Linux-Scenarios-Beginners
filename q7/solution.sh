#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q7 — DNS resolver configuration ==="
cat /etc/resolv.conf
getent ahosts example.com || getent hosts example.com
