# Week 3 — Network CLI & Troubleshooting

## Objective
Use Linux networking commands to investigate interfaces, routing, ports, processes, services, DNS, connectivity, HTTP/HTTPS and logs.

## Commands Practiced
```bash
ip link
ip route get 8.8.8.8
ip route get 1.1.1.1
sudo ss -tulpn
pgrep -a sshd
ps aux | grep ssh
ps -fp 18635
sudo systemctl status ssh
cat /etc/resolv.conf
dig www.google.com
nslookup www.google.com
host www.google.com
nc -zv 1.1.1.1 443
curl -I https://google.com
curl -v https://google.com
sudo journalctl -u ssh -n 20
journalctl -n 30
traceroute example.com
tracepath example.com
```

## Troubleshooting Flow
```text
Interface → Route → Port → Process → Service → DNS → TCP → HTTP → Logs
```

## Key Lab Observations

- `ip link`: `eth0` was UP and LOWER_UP.
- Route to external destinations used gateway `10.0.2.2`, interface `eth0`, source IP `10.0.2.15`.
- `ss -tulpn`: SSH was listening on TCP port 22 with `sshd`, PID 18635.
- `systemctl status ssh`: SSH had started successfully and later became inactive; logs showed signal 15 and successful deactivation.
- `/etc/resolv.conf`: DNS servers included `172.20.1.15`, `172.20.1.5`, and `8.8.8.8`.
- `dig www.google.com`: successful DNS response from `172.20.1.15`.
- Direct tests to `1.1.1.1` showed DNS timeout, ICMP 100% loss, and TCP/443 connection refused; the local gateway `10.0.2.2` was reachable.
- `curl -I https://google.com`: HTTP/2 301 redirect to `https://www.google.com/`.

## Completion
- [x] Interface checked
- [x] Destination-specific routing checked
- [x] Listening ports checked
- [x] Processes identified
- [x] SSH service checked
- [x] DNS configuration checked
- [x] DNS resolution tested
- [x] Public DNS troubleshooting performed
- [x] TCP connectivity tested
- [x] HTTP response tested
- [x] Logs checked
- [x] Screenshots captured
- [x] Documentation prepared
