# Storage Configuration

## Goal

Use the external 1 TB drive as persistent storage for homelab services.

## Current status

External drive detected, but not configured yet.

## Safety note

Disk operations must be verified with `lsblk -f` before formatting or mounting.

## Implementation

- Converted external drive to GPT
- Created ext4 filesystem
- Assigned label `homelab-storage`
- Mounted using UUID
- Mount point: `/srv/storage`
- Configured automatic mounting through `/etc/fstab`
