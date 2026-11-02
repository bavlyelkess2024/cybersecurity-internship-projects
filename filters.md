# Wireshark Display Filters

| Goal | Filter |
|------|--------|
| Handshake start (SYN) | `tcp.flags.syn==1 && tcp.flags.ack==0` |
| SYN-ACK | `tcp.flags.syn==1 && tcp.flags.ack==1` |
| FTP | `ftp` |
| FTP credentials | `ftp.request.command == "USER" \|\| ftp.request.command == "PASS"` |
| HTTP logins | `http.request.method == "POST"` |
| Possible port scan | `tcp.flags.syn==1 && tcp.flags.ack==0 && tcp.window_size <= 1024` |
| Large transfers | Statistics > Conversations (sort by Bytes) |

Follow a stream: right-click packet > Follow > TCP Stream.
