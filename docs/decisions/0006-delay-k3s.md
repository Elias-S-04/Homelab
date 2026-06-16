# ADR-0006

## Title

Delay Kubernetes Deployment

## Status

Accepted

## Context

The existing Docker platform already hosts multiple long-running services.

Installing k3s on a Raspberry Pi 3 B+ resulted in resource exhaustion.

## Decision

Postpone Kubernetes until one of the following conditions is met:

- More capable hardware is available
- Existing Docker services are migrated
- A second node is introduced

## Consequences

The project continues using Docker as the primary runtime.

Kubernetes learning will continue later without compromising platform stability.
