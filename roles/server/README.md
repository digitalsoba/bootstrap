Server
=========
Bootstraps servers with bare minimum configuration.

Requirements
------------
None

Role Variables
--------------

```yaml
---
# defaults file for server
user: anthony
github_keys_url: https://github.com/digitalsoba.keys
common_packages:
  - ca-certificates
  - curl
  - gnupg
  - htop
  - openssh-server
  - net-tools
  - neovim
  - python3
  - sudo
  - tmux
  - vim
apt_packages:
  - apt-transport-https
  - gnupg-agent
  - software-properties-common
  - unattended-upgrades
sudoGroup: "{{ 'sudo' if ansible_facts['os_family'] == 'Debian' else 'wheel' }}"
```

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
