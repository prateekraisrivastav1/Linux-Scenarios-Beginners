#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q5: Linux file permissions ==="
echo "Objective: Practice chmod, chown concepts and least-privilege permissions in a sandbox."
F="$STATE/secret.txt"
printf 'training secret\n' > "$F"
chmod 644 "$F"
echo "TASK:"
echo "1. Inspect permissions with: ls -l $F"
echo "2. Change the file so only its owner can read and write it (mode 600)."
echo "3. Verify with stat or ls -l."
echo "4. Explain what 6, 0 and the three permission groups mean."
echo
ls -l "$F"
echo "Practice file: $F" 
