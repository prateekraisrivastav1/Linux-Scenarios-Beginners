#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q11 — sudoers and least privilege ==="
F="$STATE/labops.sudoers"
chmod 440 "$F"
if command -v visudo >/dev/null 2>&1; then visudo -cf "$F"; else echo "visudo is not installed; review syntax manually."; fi
cat "$F"
echo "Never install this practice file into the live sudoers configuration." 
