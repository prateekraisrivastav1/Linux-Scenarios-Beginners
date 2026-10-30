#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q9: Hostname resolution and hosts file ==="
echo "Objective: Practice a local hosts-file mapping in a sandbox copy."
F="$STATE/hosts.practice"
cat > "$F" <<'EOF'
127.0.0.1 localhost
EOF
echo "TASK:"
echo "1. Add this line to $F: 192.0.2.25 training.example.test"
echo "2. Use grep to verify the entry."
echo "3. Explain that 192.0.2.0/24 is reserved for documentation."
echo "Do not edit the real /etc/hosts file."
echo
cat "$F" 
