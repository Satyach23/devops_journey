#!/bin/bash

REPORT_FILE="./system_report_$(date +%Y%m%d_%H%M%S).txt"

echo "===============================" | tee -a "$REPORT_FILE"
echo " System Health Report - $(date) " | tee -a "$REPORT_FILE"
echo "===============================" | tee -a "$REPORT_FILE"

# CPU Usage
echo "🔹 CPU Usage:" | tee -a "$REPORT_FILE"
if [[ "$OSTYPE" == "darwin"* ]]; then
    top -l 1 | head -n 10 | tee -a "$REPORT_FILE"   # macOS
else
    top -b -n 1 | head -n 10 | tee -a "$REPORT_FILE"  # Linux
fi

# Memory Usage
echo "🔹 Memory Usage:" | tee -a "$REPORT_FILE"
if [[ "$OSTYPE" == "darwin"* ]]; then
    vm_stat | tee -a "$REPORT_FILE"
else
    free -h | tee -a "$REPORT_FILE"
fi

# Disk Usage
echo "🔹 Disk Usage:" | tee -a "$REPORT_FILE"
df -h | tee -a "$REPORT_FILE"

echo "✅ Report complete!" | tee -a "$REPORT_FILE"

