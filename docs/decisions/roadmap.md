# Homelab Roadmap

## Phase 0 - Foundation

- [x] Install Ubuntu Server
- [x] Enable SSH
- [x] Update operating system
- [x] Create GitHub repository
- [x] Configure external storage
- [x] Mount storage using UUID

## Phase 1 - Docker Platform

- [x] Install Docker CE
- [x] Install Docker Compose
- [x] Move Docker Root Directory to external storage
- [x] Deploy Uptime Kuma
- [x] Deploy Traefik
- [x] Configure internal DNS with `home.arpa`
- [x] Route `status.home.arpa` through Traefik
- [x] Review and merge platform networking branch

## Phase 2 - Observability

- [x] Deploy Prometheus (and Node Exporter)
- [ ] Deploy Grafana
- [ ] Deploy Node Exporter
- [ ] Build server dashboard

## Phase 3 - Backup and Recovery

- [ ] Define backup strategy
- [ ] Back up persistent volumes
- [ ] Write restore runbook
- [ ] Test restore process

## Phase 4 - Kubernetes Platform

- [ ] Install k3s
- [ ] Configure namespaces
- [ ] Deploy first workload
- [ ] Configure ingress

## Phase 5 - GitOps

- [ ] Deploy ArgoCD
- [ ] Sync Kubernetes manifests from GitHub
- [ ] Test rollback from Git

## Phase 6 - CI/CD

- [ ] Add GitHub Actions
- [ ] Add Markdown/YAML validation
- [ ] Add Docker Compose validation

## Phase 7 - Security

- [ ] Harden SSH
- [ ] Configure firewall
- [ ] Secure Traefik dashboard
- [ ] Document secrets handling

## Phase 8 - Local AI / Edge AI

- [ ] Test lightweight local AI model
- [ ] Benchmark Raspberry Pi limitations
- [ ] Document results
