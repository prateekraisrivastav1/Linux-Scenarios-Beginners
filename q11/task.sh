#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q11: sudoers and least privilege ==="
echo "Objective: Inspect sudo availability and validate a practice sudoers snippet without installing it."
F="$STATE/labops.sudoers"
cat > "$F" <<'EOF'
# Practice-only sudoers snippet
%labops ALL=(root) /usr/bin/id
EOF
chmod 440 "$F"
echo "TASK:"
echo "1. Inspect the practice file."
echo "2. If visudo exists, validate it with: visudo -cf $F"
echo "3. Explain why sudoers files should be edited with visudo and why broad ALL privileges are risky."
echo "Do not copy this file into /etc/sudoers.d."
echo
ls -l "$F"
cat "$F" 
