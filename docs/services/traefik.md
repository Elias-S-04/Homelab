# Traefik

## Purpose

Traefik is used as the reverse proxy and single entry point for local homelab services.

## Dashboard

```text
http://Homelab.local:8080
```

## Compose Location

```text
infrastructure/docker/traefik/docker-compose.yml
```

## Docker Network

```text
proxy
```

## Useful Commands

```text
cd ~/Homelab/infrastructure/docker/traefik
docker compose ps
docker compose logs
docker compose restart
```
