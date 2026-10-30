#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q6: SSH hardening concepts ==="
echo "Objective: Edit a sample sshd configuration safely without changing the real SSH service."
F="$STATE/sshd_config.practice"
cat > "$F" <<'EOF'
# Practice-only SSH server configuration
Port 22
PermitRootLogin yes
PasswordAuthentication yes
PubkeyAuthentication yes
EOF
echo "TASK:"
echo "1. Edit $F (use vi, nano, or sed)."
echo "2. Set PermitRootLogin no."
echo "3. Set PasswordAuthentication no."
echo "4. Keep PubkeyAuthentication yes."
echo "This is a practice file only; it is NOT /etc/ssh/sshd_config."
echo
cat "$F" 
