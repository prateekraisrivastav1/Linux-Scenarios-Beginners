#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q10 — Create and manage a local user and group ==="
if [ "$(id -u)" -ne 0 ]; then echo "Run check as root (sudo -i), if permitted."; exit 2; fi
id labalice >/dev/null 2>&1 || { echo "User labalice not found."; exit 1; }
getent group labops >/dev/null 2>&1 || { echo "Group labops not found."; exit 1; }
id -nG labalice | tr ' ' '\n' | grep -qx labops && echo "PASS: labalice exists and belongs to labops." || { echo "User exists but is not in labops."; exit 1; }
