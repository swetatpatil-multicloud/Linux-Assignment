#!/usr/bin/env bash
set -euo pipefail
TS="$(date +%F-%H-%M-%S)"
LOGDIR="/var/log/devops"
mkdir -p "$LOGDIR"

{
    echo "=== Snapshot at $TS ==="
    echo "--- df -h ---"
    df -h
    echo "--- top CPU ---"
    ps -eo pid,user,pcpu,pmem,comm --sort=-pcpu | head -n 15
    echo "--- top MEM ---"
    ps -eo pid,user,pcpu,pmem,comm --sort=-pmem | head -n 15
    echo "--- /var/www/html top dirs ---"
    du -ah /var/www/html 2>/dev/null | sort -hr | head -n 10
} | tee -a "$LOGDIR/daily_monitor_${TS}.log"


