# Reliq Roadmap

This roadmap defines the planned evolution of Reliq from a minimal Kubernetes investigation tool into a reliability and incident intelligence platform.

The roadmap is intentionally incremental to prioritize simplicity, operational safety, and maintainability.

---

# Phase 0 — Repository Foundation

Goal:
Establish a clean and maintainable project foundation.

Planned work:
- Repository structure
- Initial documentation
- Go module initialization
- Basic CLI entrypoint
- Git hygiene and repository metadata

Status:
Completed

---

# Phase 1 — Kubernetes Incident Collector

Goal:
Collect operational signals from Kubernetes clusters.

Planned work:
- Kubernetes client integration
- Read-only cluster access
- Pod and deployment inspection
- Kubernetes event collection
- Basic incident detection
- Structured JSON output

Example incidents:
- CrashLoopBackOff
- ImagePullBackOff
- Pending pods
- Failed deployments

Status:
Planned

## Initial Implementation Scope

The first implementation of the Kubernetes Incident Collector will focus on:

- Adding the `reliq scan` CLI command
- Using read-only Kubernetes API access
- Inspecting pods across namespaces
- Detecting basic unhealthy pod states
- Returning structured JSON findings
- Keeping Kubernetes logic separated from CLI code

Initial unhealthy states:
- CrashLoopBackOff
- ImagePullBackOff
- ErrImagePull
- Pending

---

# Phase 2 — Observability Integrations

Goal:
Integrate telemetry sources into a unified operational context.

Planned work:
- Prometheus integration
- Loki integration
- OpenTelemetry support
- Metrics correlation
- Log enrichment
- Trace-aware incident context

Status:
Planned

---

# Phase 3 — Incident Analysis Engine

Goal:
Generate contextual operational insights.

Planned work:
- Rule-based analysis
- Incident summarization
- Context correlation
- Runbook matching
- Heuristic-based recommendations

Status:
Planned

---

# Phase 4 — Dashboard and API

Goal:
Provide operational visibility and platform interaction capabilities.

Planned work:
- REST API
- Incident dashboard
- Operational timeline view
- Incident detail pages
- Recommendation views
- Audit visibility

Status:
Planned

---

# Phase 5 — Safe Remediation Workflows

Goal:
Enable safe and auditable operational automation.

Planned work:
- Approval workflows
- Dry-run execution
- Audit logging
- GitOps-based remediation
- Operational guardrails

Status:
Planned

---

# Phase 6 — AI-Assisted Workflows

Goal:
Support operational investigation with AI-assisted reasoning.

Planned work:
- Incident summarization
- Runbook-aware reasoning
- Context-aware recommendations
- Retrieval-augmented workflows
- Safe operational copilots

Status:
Planned

---

# Long-Term Ideas

Potential future areas:

- Multi-cluster support
- SLO analytics
- Reliability scoring
- ChatOps integrations
- Incident replay
- Capacity analysis
- FinOps insights