#!/bin/bash -e

export ANSIBLE_CONFIG=/vagrant/test/ansible.cfg

ansible-playbook \
    --connection=ssh \
    --timeout=30 \
    /vagrant/playbooks/rke-playbook.yml
