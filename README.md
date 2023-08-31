# Ansible Role: lnd

This Ansible Role installs [lnd](https://github.com/lightningnetwork/lnd) binaries (just `lnd` and `lncli`). For testing purposes only. Does not configure lnd.

Tested on:
* Archlinux
* Ubuntu 22.04

## Requirements

None.

## Role Variables

```yaml
lnd_version: latest
```

See the role [defaults](defaults/main.yml).

## Example Playbook

```yaml
- hosts: lnd
  roles:
    - role: bleetube.lnd
```
