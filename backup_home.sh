#!/usr/bin/env bash
set -euo pipefail

SRC="$HOME/"
DST="/tmp/backup/"

mkdir -p "$DST"

rsync -a --delete --checksum \
  --exclude='.*' \
  --exclude='*/.*' \
  "$SRC" "$DST"

logger -t backup_home "SUCCESS: backup completed"
