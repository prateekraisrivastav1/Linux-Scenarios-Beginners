#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q9 — Hostname resolution and hosts file ==="
F="$STATE/hosts.practice"
grep -Eq '^192\.0\.2\.25[[:space:]]+training\.example\.test([[:space:]]|$)' "$F" &&
echo "PASS: sandbox hosts entry is present." || { echo "Not yet: add the requested mapping to $F"; exit 1; }
