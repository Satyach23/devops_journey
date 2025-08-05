#!/bin/bash

echo "==============================="
echo " System Health Report - $(date) "
echo "==============================="

# CPU Usage
echo ""
echo "🔹 CPU Usage:"
top -l 1 | grep "CPU usage"

# Memory Usage
echo ""
echo "🔹 Memory Usage:"
vm_stat | grep 'Pages free\|Pages active\|Pages speculative'

# Disk Usage
echo ""
echo "🔹 Disk Usage:"
df -h /

echo ""
echo "✅ Report complete!"

