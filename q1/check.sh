#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q1 — Inspect network interfaces ==="
if command -v ip >/dev/null 2>&1; then
  ip -o addr show | grep -q 'inet ' && echo "PASS: at least one IPv4 address is configured." || { echo "Not yet: no IPv4 address found."; exit 1; }
else
  echo "Cannot check: the ip command is unavailable."
  exit 2
fi
