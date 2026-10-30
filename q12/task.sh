#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q12: Read authentication and system logs ==="
echo "Objective: Find relevant logs and understand how to investigate a failed login or service event."
echo "TASK:"
echo "1. Check whether journalctl is available."
echo "2. View recent system messages."
echo "3. Look for authentication logs at common paths."
echo "4. Identify one event and explain its timestamp, service and message."
echo
if command -v journalctl >/dev/null 2>&1; then journalctl -n 25 --no-pager 2>/dev/null || true; fi
for f in /var/log/auth.log /var/log/secure; do
  if [ -r "$f" ]; then echo "### $f"; tail -n 15 "$f"; fi
done
