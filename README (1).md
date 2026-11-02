# Enterprise Threat Modeling Framework & Incident Response Blueprint

Target system: **ShopSphere**, a cloud e-commerce platform (web/mobile front end, API gateway,
containerized microservices for auth/orders/payments, managed relational DB, object storage,
admin portal, CI/CD, third-party payment and email integrations).

**Trust boundaries:** Internet ↔ gateway/WAF; gateway ↔ services; services ↔ DB; staff ↔ admin portal; platform ↔ third parties.
**Critical assets:** customer PII, payment tokens, secrets, order DB, source code/CI-CD, backups.

## Contents
1. [STRIDE threat model](stride-threat-model.md)
2. [Zero-Trust access policy](zero-trust-policy.md)
3. [4-stage incident response plan](incident-response-plan.md)
4. Playbooks: [Ransomware](playbooks/ransomware.md), [Database breach](playbooks/database-breach.md)

**References:** NIST SP 800-207, NIST SP 800-61r2, MITRE ATT&CK, OWASP Top 10, CIS Benchmarks.
