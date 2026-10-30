#!/usr/bin/env bash
set -eu
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
echo "=== Example solution: q1 — Inspect network interfaces ==="
ip -br link
ip -br addr
ip addr show
