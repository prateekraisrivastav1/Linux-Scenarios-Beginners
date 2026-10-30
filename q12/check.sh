#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q12 — Read authentication and system logs ==="
found=0
if command -v journalctl >/dev/null 2>&1; then found=1; fi
[ -r /var/log/auth.log ] && found=1
[ -r /var/log/secure ] && found=1
[ "$found" -eq 1 ] && echo "PASS: at least one common log source is available." || {
  echo "No common log source is readable in this container. This can be normal in minimal labs."
  exit 1
}
