#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q6 — SSH hardening concepts ==="
F="$STATE/sshd_config.practice"
[ -f "$F" ] || { echo "Run task.sh first."; exit 1; }
grep -Eq '^[[:space:]]*PermitRootLogin[[:space:]]+no([[:space:]]|$)' "$F" &&
grep -Eq '^[[:space:]]*PasswordAuthentication[[:space:]]+no([[:space:]]|$)' "$F" &&
grep -Eq '^[[:space:]]*PubkeyAuthentication[[:space:]]+yes([[:space:]]|$)' "$F" &&
echo "PASS: practice SSH settings match the target." || { echo "Not yet: review the three directives in $F"; exit 1; }
