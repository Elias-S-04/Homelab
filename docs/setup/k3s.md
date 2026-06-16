# k3s Foundation

## Objective

Deploy a lightweight Kubernetes cluster on the Raspberry Pi.

## Why k3s

- Lightweight
- ARM compatible
- Easy to maintain
- Suitable for Raspberry Pi

## Learning Objectives

- Understand Kubernetes architecture
- Learn kubectl
- Deploy first workloads
- Learn Services
- Learn Ingress
- Learn Persistent Volumes

## Migration Strategy

Docker services remain operational.

Kubernetes will initially host only test workloads.

Production services will be migrated gradually.

## Pre-installation Notes

The Raspberry Pi 3 B+ has limited memory.

A 1 GB swapfile was added before installing k3s to reduce the risk of memory pressure during Kubernetes experiments.

k3s will be installed with the built-in Traefik ingress controller disabled, because the homelab already uses a Docker-based Traefik reverse proxy.

## Initial Installation Attempt

### Objective

Install k3s alongside the existing Docker-based platform.

### Installation Command

```bash
curl -sfL https://get.k3s.io | sh -s - --disable traefik
```

### Result

The installation completed, but shortly after enabling the k3s service the Raspberry Pi became unresponsive and SSH access was lost.

### Initial Assessment

The current platform consists of:

- Traefik
- Uptime Kuma
- Prometheus
- Grafana
- Node Exporter

Running these services alongside the Kubernetes control plane exceeded the available resources of the Raspberry Pi 3 B+.

### System Specifications

| Component | Value |
|----------|------|
| Model | Raspberry Pi 3 B+ |
| CPU | Cortex-A53 (4 cores) |
| RAM | 1 GB |
| Swap | 1 GB |

### Decision

k3s deployment has been postponed.

The existing Docker platform remains the production environment.

Future Kubernetes experiments will either:

- temporarily stop monitoring services
- migrate to more capable hardware
- or use a separate Kubernetes node

### Lessons Learned

Always validate available resources before introducing additional platform components.

The Raspberry Pi 3 B+ is capable of running either:

- a Docker-based observability platform

or

- a lightweight Kubernetes environment

Running both simultaneously leaves very little headroom.
