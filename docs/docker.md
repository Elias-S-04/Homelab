# Docker Platform

## Objective

Provide a container runtime for the homelab.

## Storage Layout

Docker Engine is installed from Docker's official repository.

Persistent Docker data will not be stored on the operating system.

Instead Docker Root will be located at:

```
/srv/storage/docker
```

This separates the operating system from application data and simplifies backup and recovery.
