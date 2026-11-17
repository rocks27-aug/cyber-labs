
#!/bin/bash

# Nmap Practical Automation
# Authorized local lab only

TARGET="127.0.0.1"
REPORT="nmap_practical_report.txt"

echo "====================================" | tee "$REPORT"
echo "       NMAP PRACTICAL REPORT" | tee -a "$REPORT"
echo "Target: $TARGET" | tee -a "$REPORT"
echo "Date: $(date)" | tee -a "$REPORT"
echo "====================================" | tee -a "$REPORT"

run_scan() {
    echo -e "\n\n===== $1 =====" | tee -a "$REPORT"
    shift
    "$@" 2>&1 | tee -a "$REPORT"
}

echo "[1] Nmap Version"
nmap --version | head -n 2 | tee -a "$REPORT"

echo "[2] Starting SSH service..."
sudo systemctl start ssh

run_scan "Basic Scan" nmap "$TARGET"
run_scan "All TCP Ports" nmap -p- "$TARGET"
run_scan "SSH Port Scan" nmap -p 22 "$TARGET"
run_scan "Service Version Detection" nmap -sV -p 22 "$TARGET"
run_scan "OS Detection" sudo nmap -O "$TARGET"
run_scan "Default Scripts" nmap -sC -p 22 "$TARGET"
run_scan "Aggressive Scan" sudo nmap -A -p 22 "$TARGET"

echo -e "\n\n===== PRACTICAL COMPLETED =====" | tee -a "$REPORT"
echo "Report saved as: $REPORT"
