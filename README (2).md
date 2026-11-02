# Host & Network Vulnerability Assessment Lab

**Objective:** Identify structural service configuration flaws in an isolated environment.

## Lab
- Hypervisor: VirtualBox or VMware with a **Host-Only** network (no bridged adapter)
- Attacker: Kali Linux
- Targets: Metasploitable 2, DVWA (intentionally vulnerable)

## Usage
```bash
chmod +x scripts/scan.sh
./scripts/scan.sh <target_ip>
```
Scan output is saved to an `evidence/` folder created by the script.

## Methodology
1. Map open ports and services (Nmap)
2. Audit software versions against [NVD](https://nvd.nist.gov) and CVE records
3. Prioritize findings by CVSS score and exposure
4. Recommend remediation and re-scan to verify

## Disclaimer
For educational use. Scan only systems you own or are explicitly authorized to test.
