# Platform Networking

## Objective

Route all user traffic through Traefik.

## Benefits

- Single entry point
- Central routing
- Easier HTTPS
- No exposed application ports
- Easier scaling

## Target

status.homelab.local -> Traefik -> Uptime Kuma

## DNS Decision

The homelab uses `home.arpa` as the internal DNS zone.

### Reason

`home.arpa` is intended for private home networks and avoids conflicts with public domains or `.local` mDNS behavior.

### Initial Route

```text
status.home.arpa -> Traefik -> Uptime Kuma
