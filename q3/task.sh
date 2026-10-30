#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q3: Listening ports and sockets ==="
echo "Objective: Inspect listening TCP/UDP sockets and identify a process if permissions allow."
echo "TASK:"
echo "1. List listening TCP and UDP sockets."
echo "2. Identify one listening port, its protocol and (if shown) process."
echo "3. Explain the difference between a listening socket and an established connection."
echo
if command -v ss >/dev/null 2>&1; then ss -tulpen; else echo "ss is unavailable; try: netstat -tulpen"; fi
