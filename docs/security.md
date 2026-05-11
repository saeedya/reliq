# Reliq Security Model

## Overview

Reliq is designed as a security-first operational platform.

The project interacts with Kubernetes environments, observability systems, and operational workflows. As a result, security, auditability, and operational safety are treated as core architectural requirements from the beginning of the project.

---

# Security Principles

## Least Privilege

Reliq should operate with the minimum permissions required for its functionality.

Initial integrations should prefer read-only access wherever possible.

---

## Read-Only by Default

The default operational mode for Reliq is read-only.

Investigation workflows should not modify infrastructure or workloads unless explicitly approved.

---

## Human Approval for Sensitive Actions

Potential remediation actions must require explicit human approval before execution.

Examples:
- Restarting workloads
- Scaling resources
- Triggering rollbacks
- Modifying Kubernetes resources

---

## Auditability

Operational actions and workflows should be traceable and reviewable.

Examples:
- Incident investigations
- Recommendations
- User approvals
- Executed actions
- Configuration changes

---

## Secure Secret Handling

Reliq should avoid collecting or storing secrets whenever possible.

Sensitive credentials should:
- Use environment variables or secret managers
- Never be logged
- Never be exposed in APIs or dashboards

---

## Transparency

Operational reasoning and recommendations should remain explainable.

The system should provide:
- Supporting evidence
- Relevant telemetry
- Operational context
- Action rationale

---

# Initial Threat Model

## Over-Privileged Access

Risk:
Excessive Kubernetes or infrastructure permissions.

Mitigation:
- RBAC scoping
- Namespace isolation
- Read-only roles by default

---

## Unsafe Automation

Risk:
Automated remediation causing operational damage.

Mitigation:
- Human approval gates
- Dry-run support
- Action allowlists
- Audit logging

---

## Secret Exposure

Risk:
Sensitive information exposed through logs or telemetry.

Mitigation:
- Secret redaction
- Sensitive field filtering
- Restricted logging

---

## Prompt Injection (Future AI Workflows)

Risk:
Manipulated telemetry or logs influencing AI-assisted workflows.

Mitigation:
- Context filtering
- Trusted data boundaries
- Human verification
- Restricted action execution

---

# Kubernetes Security

Planned Kubernetes security practices:

- Dedicated service accounts
- Namespaced RBAC
- Minimal API permissions
- Explicit permission boundaries
- Restricted write access

---

# Operational Security Goals

Reliq aims to support:

- Safe operational workflows
- Transparent automation
- Auditable incident response
- Secure observability integrations
- Controlled remediation workflows

---

# Future Security Enhancements

Potential future areas:

- Policy engine integration
- OPA/Gatekeeper support
- Signed action approvals
- Multi-tenant isolation
- Fine-grained authorization
- Secure ChatOps workflows
- Supply chain security scanning