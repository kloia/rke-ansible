#!/bin/bash -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export ANSIBLE_CONFIG=$DIR/ansible.cfg

rm -rf $HOME/rke/ $HOME/.ansible


ansible-playbook \
    --connection=ssh \
    --timeout=30 \
    playbooks/rke-playbook.yml

