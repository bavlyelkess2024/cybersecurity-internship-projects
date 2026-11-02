# Packet Inspection & Protocol Analysis with Wireshark

**Objective:** Catch network anomalies and clear-text authentication exploits in captured traffic.

## Workflow
1. Capture on the lab interface while logging into an FTP service and an HTTP login page (e.g. DVWA).
2. Inspect the traffic using the display filters in [filters.md](filters.md).
3. Analyze the TCP three-way handshake and follow TCP streams through each protocol layer.
4. Identify clear-text credentials and unusual outbound transfers (Statistics > Conversations).
5. Recommend mitigations (SFTP/FTPS, HTTPS, SSH, segmentation, egress filtering).

## Disclaimer
For educational use. Capture only traffic on networks you own or are authorized to monitor.
Never publish capture files containing real credentials (`*.pcap`/`*.pcapng` are git-ignored).
