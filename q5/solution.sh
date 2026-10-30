#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q5 — Linux file permissions ==="
F="$STATE/secret.txt"
chmod 600 "$F"
ls -l "$F"
stat "$F" 2>/dev/null || true
