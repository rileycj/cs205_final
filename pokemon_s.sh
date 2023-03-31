#!/bin/bash
filename=$1
# pokmone n
total=$(awk 'END {print NR}' $filename)
# avg hp
avg_hp=$(awk '{sum += $5} END {print sum / NR}' $filename)
#avg att
avg_attack=$(awk '{sum += $4} END {print sum / NR}' $filename)
#print
echo "======= SUMMARY OF $filename ======"
echo "# Total Pokemon: $total"
echo "# Avg. HP: $avg_hp"
echo "# Avg. Attack: $avg_attack"
echo "# ======= END SUMMARY =======#"
