# Playbook - Database Breach

| Phase | Actions |
|-------|---------|
| Detect | DB activity monitoring: large exports, off-hours access, new accounts, SQLi in WAF logs, unexpected egress |
| Contain | Revoke DB creds and API keys, restrict DB network to a forensic allow-list, block attacker IPs, snapshot DB and logs, disable vulnerable endpoint |
| Eradicate | Fix root cause, rotate all secrets, review accounts and stored procedures for backdoors |
| Recover | Restore verified backup, stricter auditing, column encryption, payment tokenization |
| Notify | Determine data types and record counts; notify regulators, payment provider, affected users within legal deadlines |
