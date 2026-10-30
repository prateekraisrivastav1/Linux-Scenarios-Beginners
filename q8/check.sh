#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q8 — DNS record queries ==="
if command -v dig >/dev/null 2>&1 || command -v nslookup >/dev/null 2>&1; then
  echo "PASS: a DNS query tool is available."
else
  getent hosts example.com >/dev/null 2>&1 && echo "PASS: basic name resolution works (dig/nslookup unavailable)." || {
    echo "No DNS query tool and basic lookup failed; this may be a restricted lab."
    exit 1
  }
fi
