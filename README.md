# Reliq

![Go Version](https://img.shields.io/badge/go-1.23+-00ADD8?logo=go)
![License](https://img.shields.io/badge/license-MIT-orange)

Reliq is a reliability and incident intelligence platform for Kubernetes environments.

The project focuses on helping engineering teams investigate incidents faster, reduce operational toil, and improve platform reliability through safe automation and contextual insights.

## Vision

Modern cloud-native systems generate large amounts of operational data across logs, metrics, traces, deployment events, and Kubernetes resources.

Reliq aims to provide a unified operational context that helps engineers:

- Investigate incidents faster
- Understand platform health
- Reduce repetitive operational tasks
- Improve reliability workflows
- Enable safer operational automation

## Goals

- Provide contextual incident investigation tooling
- Integrate with Kubernetes-native environments
- Support observability workflows across logs, metrics, and traces
- Enable safe and auditable operational automation
- Improve developer and platform engineering experience

## Non-Goals

Reliq is not intended to:

- Replace observability platforms such as Prometheus or Grafana
- Perform fully autonomous remediation without human approval
- Replace incident responders or SRE teams
- Collect or expose sensitive secrets

## Planned Features

- Kubernetes incident inspection
- Context-aware incident analysis
- Observability integrations
- Audit-friendly operational workflows
- AI-assisted incident investigation
- Slack and notification integrations
- Reliability dashboards and reporting

## Tech Stack

Current planned stack:

- Go
- Kubernetes
- Prometheus
- Grafana
- Loki
- OpenTelemetry
- React
- GitHub Actions

## Security Principles

Reliq follows security-first operational principles:

- Read-only access by default
- Least privilege access
- Human approval for sensitive actions
- Auditable workflows
- Secure secret handling
- Transparent operational behavior

## Project Status

Early development.

## Roadmap

Initial focus areas:

1. Repository foundation
2. Kubernetes incident collector
3. Observability integrations
4. Incident analysis engine
5. Dashboard and APIs
6. Safe remediation workflows

## Development

```bash
go run ./cmd/reliq
```