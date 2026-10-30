#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
echo "=== Check: q3 — Listening ports and sockets ==="
if command -v ss >/dev/null 2>&1; then
  ss -lntu >/dev/null && echo "PASS: ss can inspect listening sockets."
elif command -v netstat >/dev/null 2>&1; then
  netstat -lntu >/dev/null && echo "PASS: netstat can inspect listening sockets."
else
  echo "Neither ss nor netstat is installed; inspect the task output if available."
fi
