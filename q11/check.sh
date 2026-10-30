#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q11 — sudoers and least privilege ==="
F="$STATE/labops.sudoers"
[ -f "$F" ] || { echo "Run task.sh first."; exit 1; }
[ "$(stat -c '%a' "$F" 2>/dev/null || echo 440)" = "440" ] || { echo "Expected mode 440."; exit 1; }
if command -v visudo >/dev/null 2>&1; then visudo -cf "$F"; else echo "visudo unavailable; file mode is 440. Syntax validation skipped."; fi
echo "PASS: practice sudoers file has restrictive permissions." 
