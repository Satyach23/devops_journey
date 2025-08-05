#!/bin/bash
OUTPUT_FILE=~/devops_day1/system_report_$(date +%Y%m%d_%H%M%S).txt
echo "i have update system_chcek"
echo "git practice session"
echo "==============================="| tee -a $OUTPUT_FILE
echo " System Health Report - $(date) "| tee -a $OUTPUT_FILE
echo "==============================="| tee -a $OUTPUT_FILE

# CPU Usage
echo ""| tee -a $OUTPUT_FILEE
echo "🔹 CPU Usage:"| tee -a $OUTPUT_FILE
top -l 1 | grep "CPU usage"

# Memory Usage
echo ""| tee -a $OUTPUT_FILE
echo "🔹 Memory Usage:"| tee -a $OUTPUT_FILE
vm_stat | grep 'Pages free\|Pages active\|Pages speculative'

# Disk Usage
echo ""| tee -a $OUTPUT_FILE
echo "🔹 Disk Usage:"| tee -a $OUTPUT_FILE
df -h /

echo ""| tee -a $OUTPUT_FILE
echo "✅ Report complete!"| tee -a $OUTPUT_FILE

