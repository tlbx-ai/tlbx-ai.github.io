#!/bin/bash
set -e
tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT
if command -v curl >/dev/null 2>&1; then
  curl -fsSL https://get.tlbx.ai/install.sh -o "$tmp"
else
  wget -qO "$tmp" https://get.tlbx.ai/install.sh
fi
chmod +x "$tmp"
exec "$tmp" --dev "$@"