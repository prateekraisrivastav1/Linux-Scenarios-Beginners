#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q5 — Linux file permissions ==="
F="$STATE/secret.txt"
[ -f "$F" ] || { echo "Run task.sh first."; exit 1; }
MODE="$(stat -c '%a' "$F" 2>/dev/null || stat -f '%Lp' "$F" 2>/dev/null || true)"
[ "$MODE" = "600" ] && echo "PASS: secret.txt has mode 600." || { echo "Not yet: current mode is ${MODE:-unknown}; run chmod 600 $F"; exit 1; }
