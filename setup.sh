#!/usr/bin/env bash
set -eu
ROOT="$(cd "$(dirname "$0")" && pwd)"
STATE="$HOME/linux-beginner-labs-state"
mkdir -p "$STATE"
printf 'Workspace state directory: %s\n' "$STATE"
printf '\nAvailable exercises:\n'
for d in "$ROOT"/q[0-9]*; do
  [ -d "$d" ] || continue
  printf '  %s\n' "$(basename "$d")"
done
printf '\nStart with: cd "%s/q1" && ./task.sh\n' "$ROOT"
printf 'Then run ./check.sh. Read ./solution.sh only after trying.\n'
