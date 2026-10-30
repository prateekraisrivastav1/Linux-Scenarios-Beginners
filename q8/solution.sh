#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q8 — DNS record queries ==="
if command -v dig >/dev/null 2>&1; then
  for type in A AAAA MX NS; do echo "### $type"; dig +noall +answer example.com "$type"; done
elif command -v nslookup >/dev/null 2>&1; then
  for type in A AAAA MX NS; do echo "### $type"; nslookup -type="$type" example.com; done
else
  echo "Install dnsutils (Debian/Ubuntu) or bind-utils (RHEL-like) only if permitted."
fi
