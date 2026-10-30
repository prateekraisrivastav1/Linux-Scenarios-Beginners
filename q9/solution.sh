#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q9 — Hostname resolution and hosts file ==="
F="$STATE/hosts.practice"
grep -q 'training.example.test' "$F" || echo '192.0.2.25 training.example.test' >> "$F"
cat "$F"
echo "This sandbox file does not affect system name resolution." 
