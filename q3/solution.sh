#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q3 — Listening ports and sockets ==="
if command -v ss >/dev/null 2>&1; then
  ss -tulpen
elif command -v netstat >/dev/null 2>&1; then
  netstat -tulpen
else
  echo "Install iproute2/net-tools only if the scenario permits."
fi
