# Week 2 — Networking Fundamentals

## Objective
Build practical networking fundamentals using Kali Linux.

## Topics
1. IP Addressing
2. Gateway and Routing
3. MAC Address and ARP
4. TCP, UDP and Ports
5. DNS
6. Connectivity and Network Path

## Commands
```bash
ip addr
ip route
ip neigh
ss -tuln
dig
nslookup
host
ping
traceroute
tracepath
```

## Practical

### 1. IP Address
```bash
ip addr
```
Observe interfaces, IPv4 addresses, CIDR prefix and MAC address.

### 2. Gateway and Routing
```bash
ip route
```
Identify the default route/gateway and connected routes.

### 3. MAC and ARP
```bash
ip neigh
```
Observe IP-to-MAC neighbour information.

### 4. TCP/UDP and Ports
```bash
ss -tuln
```
Observe listening TCP/UDP sockets and port numbers.

### 5. DNS
```bash
dig example.com
nslookup example.com
host example.com
```

### 6. Connectivity and Network Path
```bash
ping -c 4 8.8.8.8
ping -c 4 example.com
traceroute example.com
tracepath example.com
```

## Completion
- [ ] IP information inspected
- [ ] Routing table inspected
- [ ] ARP/neighbour table inspected
- [ ] TCP/UDP ports inspected
- [ ] DNS resolution tested
- [ ] Connectivity tested
- [ ] Network path tested
- [ ] Screenshots captured
- [ ] GitHub documentation updated

> Subnetting is intentionally kept outside Week 2 and will be covered as a separate lab.
