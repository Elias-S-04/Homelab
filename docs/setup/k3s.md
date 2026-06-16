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
