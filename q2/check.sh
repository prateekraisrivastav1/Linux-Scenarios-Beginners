#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q2 — Routes and default gateway ==="
if command -v ip >/dev/null 2>&1; then
  ip route | grep -q '^default' && echo "PASS: a default route exists." || { echo "No default route detected; this may be normal in a restricted scenario."; exit 1; }
else
  echo "The ip command is unavailable."
  exit 2
fi
