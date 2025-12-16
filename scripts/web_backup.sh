#!/usr/bin/env bash
# Usage: web_backup.sh SERVER_NAME SRC1 SRC2 ...
# Example: web_backup.sh apache /etc/httpd /var/www/html

set -euo pipefail

SERVER="${1:-}"
shift || true

if [[ -z "$SERVER" || "$#" -lt 1 ]]; then
  echo "Usage: $0 <server_name> <path1> [path2 ...]" >&2
  exit 1
fi

DATE="$(date +%F)"
TS="$(date +%F_%H-%M-%S)"
BACKUP_DIR="/backups"

LOG_DIR="/backups/logs"
mkdir -p "$BACKUP_DIR" "$LOG_DIR"

ARCHIVE="${BACKUP_DIR}/${SERVER}_backup_${DATE}.tar.gz"
LOGFILE="${LOG_DIR}/${SERVER}_backup_${TS}.log"

{
  echo "=== Backup start: $TS ==="
  echo "Server: $SERVER"
  echo "Sources:"
  for src in "$@"; do
    echo " - $src"
  done

  # Create archive (preserve permissions, follow symlinks as is)
  tar -czpf "$ARCHIVE" "$@" 2>&1
  echo "Archive created: $ARCHIVE"

  # Verify integrity: list contents
  echo "--- Archive contents ---"
  tar -tzf "$ARCHIVE" | head -n 50
  COUNT="$(tar -tzf "$ARCHIVE" | wc -l)"
  echo "Total files in archive: $COUNT"

  # Extra check: test decompression
  echo "Running gzip integrity check..."
  if gzip -t "$ARCHIVE"; then
    echo "gzip integrity: OK"
    echo "=== Backup completed successfully ==="
else
    echo "gzip integrity: FAILED"
    echo "=== Backup ended with errors ==="
    false
  fi

} >> "$LOGFILE" 2>&1

exit 0
