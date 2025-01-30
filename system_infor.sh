#!/bin/bash
echo "System Information:"
echo "---------------------"
echo "Hostname: $(hostname)"
echo "OS: $(uname -o)"
echo "Kernel Version: $(uname -r)"
echo "CPU: $(lscpu | grep 'Model name' | awk -F ':' '{print $2}')"
echo "RAM Usage: $(free -h | grep Mem | awk '{print $3 "/" $2}')"
echo "Disk Usage: $(df -h | grep '/$')"
echo "Uptime: $(uptime -p)"

