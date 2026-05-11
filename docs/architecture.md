# Reliq Architecture

## Overview

Reliq is a Kubernetes-focused reliability and incident intelligence platform.

The system is designed to help platform engineers and SRE teams investigate incidents faster, reduce operational toil, and improve reliability through contextual operational insights and safe automation workflows.

Reliq follows a modular and security-first architecture that prioritizes observability, auditability, and incremental automation.

---

## Design Principles

### Read-Only First

Reliq starts with read-only integrations and investigation workflows before introducing operational actions.

### Human-in-the-Loop

Potential remediation actions should require human approval and remain transparent and auditable.

### Kubernetes-Native

Reliq is designed to integrate naturally with Kubernetes environments and cloud-native operational workflows.

### Incremental Automation

Automation should be introduced gradually and safely with clear operational boundaries.

### Observability-Driven

Operational decisions should be based on logs, metrics, traces, deployment events, and Kubernetes state.

### Auditability

Operational workflows and actions should be traceable and reviewable.

---

## Core Components

### Collector

Responsible for gathering operational signals from Kubernetes and observability systems.

Examples:
- Kubernetes events
- Pod states
- Deployment status
- Metrics
- Logs
- Traces

Initial implementation scope:

The first collector implementation will focus on Kubernetes pod inspection.

It will:
- Connect to Kubernetes using the user's kubeconfig
- Use read-only Kubernetes API access
- List pods across namespaces
- Extract basic workload health signals
- Return structured findings for unhealthy workloads

The CLI layer should only trigger collection workflows. Kubernetes-specific logic should live in internal packages.

### Context Builder

Combines operational signals into a unified incident context.

Examples:
- Recent deployments
- Failing workloads
- Resource pressure
- Error spikes
- Related alerts

### Incident Analyzer

Analyzes collected context and generates investigation insights.

This component may combine:
- Rule-based analysis
- Heuristics
- AI-assisted reasoning
- Runbook correlation

### Recommendation Engine

Provides suggested next steps and operational guidance.

Examples:
- Suggested runbooks
- Rollback recommendations
- Scaling recommendations
- Incident summaries

### Dashboard and API

Provides visibility into incidents, operational context, and remediation workflows.

### Audit Logger

Tracks operational workflows, approvals, and system actions.

---

## Data Flow

High-level workflow:

1. Operational signals are collected
2. Context is assembled
3. Incidents are analyzed
4. Recommendations are generated
5. Operators review and approve actions
6. Audit records are stored

---

## Security Model

Reliq follows security-first operational principles:

- Least privilege access
- Read-only integrations by default
- Explicit approval for sensitive actions
- No secret collection
- Transparent operational behavior
- Auditable workflows

---

## Deployment Model

Initial deployments are expected to run inside Kubernetes clusters.

Future deployment models may include:
- Multi-cluster deployments
- SaaS deployment
- Hybrid deployment models

---

## Future Extensions

Potential future capabilities include:

- AI-assisted incident investigation
- OpenTelemetry-native analysis
- GitOps remediation workflows
- Slack and ChatOps integrations
- SLO and reliability analytics
- Multi-cluster operational visibility