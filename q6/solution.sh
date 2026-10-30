#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q6 — SSH hardening concepts ==="
F="$STATE/sshd_config.practice"
sed -i -E 's/^[#[:space:]]*PermitRootLogin.*/PermitRootLogin no/; s/^[#[:space:]]*PasswordAuthentication.*/PasswordAuthentication no/; s/^[#[:space:]]*PubkeyAuthentication.*/PubkeyAuthentication yes/' "$F"
cat "$F"
echo "Real SSH configuration was not modified." 
