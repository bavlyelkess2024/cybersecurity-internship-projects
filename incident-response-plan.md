# Incident Response Lifecycle (NIST SP 800-61)

| Stage | Key activities | Owner | Output |
|-------|----------------|-------|--------|
| 1. Preparation | IR policy, roles (Commander, Tech Lead, Comms, Legal), contact tree, EDR/SIEM coverage, tested offline immutable backups, tabletop exercises, forensic kit, external IR retainer | CISO / SOC manager | Approved plan, playbooks |
| 2. Detection & Analysis | Triage alerts, confirm true positive, scope hosts/accounts/data, severity P1-P4, preserve evidence, map to MITRE ATT&CK, declare incident | SOC analysts | Ticket, scope, IOCs |
| 3. Containment, Eradication & Recovery | Isolate hosts, disable accounts, block IOCs, revoke keys; remove persistence, patch flaw, reset credentials; restore from clean backups, staged return with monitoring | IR tech lead, IT ops | Clean restored systems |
| 4. Post-Incident | Blameless review within 2 weeks, root cause, update detections/playbooks, regulatory notifications (e.g. GDPR 72h), metrics (MTTD/MTTR) | Commander, management | Final report, action items |

## Roles
- **Incident Commander:** decisions, escalation, status
- **Technical Lead / SOC:** investigation and containment
- **Comms & Legal:** internal/customer/regulator messaging, evidence handling
- **Management:** approves business-impacting actions
- Coordinate over an out-of-band channel, not the compromised environment.
