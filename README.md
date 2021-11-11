# bootstrap
Ansible playbook to bootstrap personal workstations and servers

## Development
Ensure you have docker installed to run molecue test and python 3.9+
Create a virtual python environment and install pip requirements

```shell
python -m venv venv
source ./venv/bin/activate
pip install -r requirements.txt
```

### Running roles test
Change directory into the role and run `molecue test`
## Workstation
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

or run this script as root 
```shell
source <(curl -s https://raw.githubusercontent.com/digitalsoba/bootstrap/main/roles/server/files/init.sh)
```