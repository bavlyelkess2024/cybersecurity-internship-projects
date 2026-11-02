# STRIDE Threat Model - ShopSphere

| STRIDE | Threat vector | Component | Mitigation |
|--------|---------------|-----------|------------|
| Spoofing | Credential stuffing, phishing, forged JWT, stolen API keys | Auth service, admin portal, gateway | MFA, rate limiting, bot protection, short-lived signed tokens, mTLS |
| Tampering | SQL injection, in-transit modification, malicious commit/dependency | Orders DB, API, pipeline | Parameterized queries, input validation, TLS 1.2+, signed commits/artifacts, SCA |
| Repudiation | Admin denies deleting records; no refund audit trail | Admin portal, payments | Immutable centralized logs (SIEM), time sync, session recording |
| Information Disclosure | Public bucket, verbose errors, unencrypted backups, leaked secrets | Storage, DB, backups, repos | Encryption (KMS), block public buckets, secrets manager, secret scanning, least-privilege IAM |
| Denial of Service | Volumetric DDoS, app-layer floods, expensive queries | Gateway, web tier, DB | CDN/DDoS protection, WAF limits, autoscaling, query timeouts |
| Elevation of Privilege | Container escape, over-permissive IAM, IDOR | Kubernetes, IAM, APIs | Non-root containers, RBAC, IAM reviews, server-side authz, JIT privileged access |

**Priority:** Elevation of Privilege and Information Disclosure first (direct path to mass breach), then Spoofing and Tampering, then DoS.
