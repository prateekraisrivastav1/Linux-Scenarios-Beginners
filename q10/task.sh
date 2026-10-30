#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q10: Create and manage a local user and group ==="
echo "Objective: Create a disposable local account, add it to a group and inspect its identity."
echo "TASK (requires root in this disposable Killercoda container):"
echo "1. Create group labops."
echo "2. Create user labalice with a home directory and bash shell."
echo "3. Add labalice to supplementary group labops."
echo "4. Verify with id labalice and getent group labops."
echo "5. Do not set a reusable password."
echo
if [ "$(id -u)" -ne 0 ]; then echo "You are not root. Try sudo -i if sudo is configured."; fi
