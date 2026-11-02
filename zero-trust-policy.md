# Zero-Trust Network Access Policy

Principle: **never trust, always verify.** Network location grants no trust.

| Pillar | Policy | Implementation |
|--------|--------|----------------|
| Identity | Unique verified identity for every user and workload | Central IdP, SSO, OIDC/SAML, workload certificates |
| MFA | Mandatory for all staff/admin; step-up for sensitive actions | FIDO2/WebAuthn preferred, TOTP fallback, no SMS for admins, conditional access |
| Device posture | Managed, compliant devices only | MDM/EDR: patched, encrypted, EDR running |
| Least privilege | Minimum, time-bound permissions | RBAC/ABAC, JIT elevation, quarterly reviews |
| Micro-segmentation | Default deny between segments | Network policies, security groups, DB reachable only from orders/payments |
| Encrypted east-west | All internal traffic authenticated | Service mesh mTLS, TLS to DB, private endpoints |
| Remote access | App-level access, no flat VPN | ZTNA / identity-aware proxy; admin portal not public |
| Continuous verification | Re-evaluate sessions, revoke on risk | Short sessions, UEBA, automated token revocation |
| Visibility | Log every access decision | SIEM, NetFlow, cloud audit logs |

**Sample rule:** Allow an admin (MFA < 15 min ago) on a compliant device to reach the admin portal in an approved JIT window; deny and log everything else.
