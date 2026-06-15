# Homelab

A production-inspired DevOps homelab running on a Raspberry Pi 3 B+.

The purpose of this project is to build and document a small self-hosted infrastructure platform using Linux, Docker, persistent storage, monitoring, Kubernetes, GitOps and infrastructure-as-code practices.

## Current Status

- Ubuntu Server installed
- SSH configured
- External storage mounted at `/srv/storage`
- Docker CE installed
- Docker data-root moved to `/srv/storage/docker`

## Planned Stack

- Docker Compose
- Uptime Kuma
- k3s
- ArgoCD
- Prometheus
- Grafana
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

Windows PC
    │
VS Code
    │
GitHub
    │
SSH
    │
Raspberry Pi
    │
Docker
    │
Traefik
    │
Uptime Kuma
