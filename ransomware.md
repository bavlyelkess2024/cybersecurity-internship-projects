# Playbook - Active Ransomware

| Phase | Actions |
|-------|---------|
| Detect | EDR alerts on mass encryption, shadow-copy deletion, ransom notes, abnormal SMB, unusual admin logons |
| Contain (first hour) | Isolate infected hosts (keep powered on for memory forensics), disable affected accounts, block C2, segment/shut file shares, disconnect backups |
| Eradicate | Find patient zero and entry vector, remove persistence, reset privileged credentials (and krbtgt if AD) |
| Recover | Rebuild from known-good images, restore from offline/immutable backups after scanning, return services by priority |
| Decision & legal | Paying is not recommended; involve legal, insurance, law enforcement; assess data theft and notification duties |
