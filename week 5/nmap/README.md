# Week 5 – Nmap Practical

## Objective
Learn basic Nmap host discovery, TCP port scanning, service/version detection, OS fingerprinting, default NSE scripts, and aggressive scanning in a local lab.

## Lab details
- Tool: Nmap 7.99
- Target: `127.0.0.1` (Kali localhost only)
- Date recorded in report: 17 November 2026
- Open service observed: `22/tcp` – SSH
- Detected service version: `OpenSSH 10.4p1 Debian 4 (protocol 2.0)`

## Verified results
The supplied terminal report contains results for:
1. Basic scan – `nmap 127.0.0.1`
2. All TCP ports – `nmap -p- 127.0.0.1`
3. SSH port – `nmap -p 22 127.0.0.1`
4. Service/version detection – `nmap -sV 127.0.0.1`
5. OS detection – `sudo nmap -O 127.0.0.1`
6. Default scripts – `nmap -sC 127.0.0.1`
7. Aggressive scan – `sudo nmap -A 127.0.0.1`

The report showed TCP port 22 open and SSH running. Nmap suggested Linux OS families but did not identify an exact OS match.

## Evidence
- `nmap_practical_report.txt` – terminal scan output supplied by the learner.
- `Screenshots/` – two terminal screenshots supplied by the learner.

## Important scope note
The report supplied for this documentation does **not** contain output for Fast Scan, UDP Scan, SYN Scan, ACK Scan, Top Ports, or the additional output-format test. Those are not marked as completed here. Run them separately in an authorized lab if you want to add evidence.

## Safety
Only scan systems and networks that you own or have explicit permission to test. This exercise targets `127.0.0.1`, the local machine.
