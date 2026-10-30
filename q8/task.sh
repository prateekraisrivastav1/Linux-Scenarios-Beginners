#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== q8: DNS record queries ==="
echo "Objective: Use dig or nslookup to query DNS records and interpret common record types."
echo "TASK:"
echo "1. Query the A record for example.com."
echo "2. Query its AAAA record."
echo "3. Query its MX record."
echo "4. Explain: A, AAAA, MX, NS and CNAME."
echo
if command -v dig >/dev/null 2>&1; then
  dig example.com A
  dig example.com AAAA
  dig example.com MX
elif command -v nslookup >/dev/null 2>&1; then
  nslookup -type=A example.com
  nslookup -type=AAAA example.com
  nslookup -type=MX example.com
else
  echo "Neither dig nor nslookup is installed. Use getent hosts example.com for a basic system lookup."
fi
