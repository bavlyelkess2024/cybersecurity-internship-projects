#!/usr/bin/env bash
# Lab-only scanning helper. Use ONLY on systems you own or are authorized to test.
set -euo pipefail
TARGET="${1:-}"
[ -z "$TARGET" ] && { echo "Usage: $0 <target_ip>"; exit 1; }
read -r -p "Is $TARGET YOUR isolated lab machine? (yes/no) " ok
[ "$ok" = "yes" ] || { echo "Aborted."; exit 1; }

OUT="$(dirname "$0")/../evidence"
mkdir -p "$OUT"
echo "[1/3] Full port + version + default scripts"
nmap -sV -sC -p- -T4 "$TARGET" -oA "$OUT/scan_full"
echo "[2/3] Vulnerability scripts"
nmap --script vuln "$TARGET" -oN "$OUT/scan_vuln.txt"
echo "[3/3] Web checks (if HTTP is open)"
if command -v nikto >/dev/null; then
  nikto -h "http://$TARGET" -o "$OUT/nikto.txt" || echo "nikto finished with errors"
else
  echo "nikto not installed, skipping"
fi
echo "Done. Results in $OUT"
