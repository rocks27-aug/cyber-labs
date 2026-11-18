# Week 04 — Wireshark: Packet Capture and Analysis

## Objective
Practise capturing and inspecting network packets in Wireshark, focusing on ICMP, DNS, TCP, HTTP, HTTPS, and TLS.

## Lab environment
- OS: Kali Linux running in VirtualBox
- Capture interface: `eth0`
- Observed Kali IPv4 address: `10.0.2.15`
- Observed VirtualBox NAT gateway: `10.0.2.2`

> These addresses are observations from this lab session and may differ in another network.

## Practicals

### 1. ICMP request and reply
Command:
```bash
ping -c 4 10.0.2.2
```
Display filter: `icmp`

Observed request: `10.0.2.15` → `10.0.2.2`  
Observed reply: `10.0.2.2` → `10.0.2.15`

### 2. DNS query and response
Command: `dig www.google.com`  
Display filter: `dns`

The response contained multiple IPv4 A records. One observed address was `142.251.150.119`.

### 3. DNS record types
Commands:
```bash
dig www.google.com A
dig www.google.com AAAA
dig www.google.com CNAME
```
- `A`: IPv4 record.
- `AAAA`: IPv6 record.
- `CNAME`: canonical-name alias record.

A later CNAME query returned `SERVFAIL`. Its cause was not established, so this is recorded only as an observation.

### 4. TCP three-way handshake
Command used: `curl -I https://example.com`

Observed handshake flags:
1. `[SYN]`
2. `[SYN, ACK]`
3. `[ACK]`

The capture also showed an HTTP `HEAD / HTTP/1.1` request and an `HTTP/1.1 200 OK` response in the observed traffic.

### 5. HTTP, HTTPS, and TLS
Commands:
```bash
curl -I http://example.com
curl -I https://example.com
```
Useful display filters:
```text
http
tls
tcp.port == 443
```
Observed TLS messages included Client Hello, Server Hello, Certificate, and Application Data. The Client Hello was expanded to locate the server-name/SNI extension.

## Key concepts
- A **display filter** changes which captured packets are shown; it does not stop capture.
- ICMP is commonly used for ping request/reply.
- DNS resolves names to records such as IPv4/IPv6 addresses.
- TCP handshake: SYN → SYN-ACK → ACK.
- HTTP itself does not provide encryption.
- HTTPS protects HTTP with TLS. Metadata may remain visible, while application data is normally encrypted.
- SNI can reveal the requested hostname when present and not concealed by mechanisms such as Encrypted Client Hello (ECH).

## Suggested workflow
1. Open Wireshark and start capture on `eth0`.
2. Generate traffic after capture starts.
3. Apply a display filter such as `icmp`, `dns`, `http`, `tls`, or `tcp.port == 443`.
4. Select a packet and expand protocol details.
5. Save screenshots and document observations.

## Learning outcome
Practised identifying ICMP requests/replies, DNS queries/responses, TCP handshake flags, HTTP request/response packets, and TLS handshake/application-data records.

## Safety
Only capture traffic on systems and networks you own or are authorised to inspect.
