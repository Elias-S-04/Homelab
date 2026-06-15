# Docker Platform

## Objective

Provide a container runtime for the homelab.

---

## Architecture

Docker Engine is installed from Docker's official APT repository instead of Ubuntu's package repository to ensure access to current stable releases.

Container data is stored on dedicated persistent storage rather than the operating system.

```
Docker Root Directory
└── /srv/storage/docker
```

---

## Storage Layout

Docker Engine is installed from Docker's official repository.

Persistent Docker data will not be stored on the operating system.

Instead Docker Root will be located at:

```
/srv/storage/docker
```

This separates the operating system from application data and simplifies backup and recovery.

## Design Decisions

- Ubuntu Server installed on SD card
- External 1 TB drive mounted at `/srv/storage`
- Docker Root Directory moved from `/var/lib/docker`
- Persistent container data stored on external storage
- Docker installed from the official Docker repository

---

## Verification

Verification commands:

```bash
docker info | grep "Docker Root Dir"
```

Expected output:

```
Docker Root Dir: /srv/storage/docker
```

Test container:

```bash
docker run hello-world
```

Result:

- Docker installed successfully
- Docker Compose available
- Container runtime verified

---

## Rollback

1. Stop Docker

```bash
sudo systemctl stop docker
```

2. Remove or edit:

```
/etc/docker/daemon.json
```

3. Restart Docker

```bash
sudo systemctl start docker
```

## First Production Service: Uptime Kuma

Uptime Kuma was deployed as the first Docker Compose service in the homelab.

### Purpose

Uptime Kuma provides basic service monitoring for the homelab environment.

### Compose Location

```text
infrastructure/docker/uptime-kuma/docker-compose.yml
