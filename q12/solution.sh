#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q12 — Read authentication and system logs ==="
if command -v journalctl >/dev/null 2>&1; then
  journalctl -n 50 --no-pager
fi
[ -r /var/log/auth.log ] && tail -n 50 /var/log/auth.log || true
[ -r /var/log/secure ] && tail -n 50 /var/log/secure || true
