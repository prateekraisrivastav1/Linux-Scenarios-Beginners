#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q10 — Create and manage a local user and group ==="
[ "$(id -u)" -eq 0 ] || { echo "Run as root: sudo -i"; exit 1; }
getent group labops >/dev/null 2>&1 || groupadd labops
id labalice >/dev/null 2>&1 || useradd -m -s /bin/bash labalice
usermod -aG labops labalice
id labalice
getent passwd labalice
getent group labops
