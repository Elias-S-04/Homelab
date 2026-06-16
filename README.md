# Homelab

A production-inspired DevOps homelab running on a Raspberry Pi 3 B+.

The purpose of this project is to build and document a small self-hosted infrastructure platform using Linux, Docker, persistent storage, monitoring, Kubernetes, GitOps and infrastructure-as-code practices.

## Current Status

- Ubuntu Server installed
- SSH configured
- External storage mounted at `/srv/storage`
- Docker CE installed
- Docker data-root moved to `/srv/storage/docker`
- Uptime Kuma deployed with Docker Compose
- Traefik deployed as reverse proxy
- `status.home.arpa` routes to Uptime Kuma through Traefik

## Planned Stack

- Docker Compose
- Traefik
- Uptime Kuma
- Prometheus
- Grafana
- k3s
- ArgoCD
- Terraform

## Objectives

- Learn Linux administration
- Learn Docker
- Learn reverse proxies
- Learn Kubernetes
- Learn GitOps
- Learn Infrastructure as Code
- Learn monitoring
- Build a production-like platform

## Current Architecture

```mermaid
flowchart TD
    A[Windows PC / VS Code] --> B[GitHub Repository]
    A --> C[SSH]
    C --> D[Raspberry Pi 3 B+]
    D --> E[Docker Engine]
    E --> F[Traefik Reverse Proxy]
    F --> G[Uptime Kuma]