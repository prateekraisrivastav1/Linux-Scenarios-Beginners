#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q7 — DNS resolver configuration ==="
getent hosts example.com >/dev/null 2>&1 && echo "PASS: the system resolver returned an address for example.com." || {
  echo "Lookup did not succeed. Check /etc/resolv.conf and whether this scenario has outbound DNS."
  exit 1
}
