#!/usr/bin/env bash
set -eu
if [ "$(id -u)" -ne 0 ]; then
  echo "Run as root inside the disposable Killercoda container: sudo -i, then ./cleanup-users.sh"
  exit 1
fi
if id labalice >/dev/null 2>&1; then userdel -r labalice || true; fi
if getent group labops >/dev/null 2>&1; then groupdel labops || true; fi
echo "Cleanup attempted for labalice and labops."
