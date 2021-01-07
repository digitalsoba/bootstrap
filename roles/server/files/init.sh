#!/bin/bash

set -x
set -e

apt update
apt install ansible git -y
ansible-pull -U https://github.com/digitalsoba/bootstrap.git -t server