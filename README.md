# bootstrap
Ansible playbook to bootstrap personal workstations and servers
## Workstastions
Run `ansible-pull -U https://github.com/digitalsoba/bootstrap.git -K -t workstation` to run the workstation role.

## Servers
Run `ansible-pull -U https://github.com/digitalsoba/bootstrap.git -t server` to run the server role.

You can use cloud init bash script to auto provision. Sample below is based on Debian 10
```
#!/bin/bash

apt update
apt install ansible git -y
ansible-pull -U https://github.com/digitalsoba/bootstrap.git -t server
```