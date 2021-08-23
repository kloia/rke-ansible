## Ansible RKE playbook

This playbook installs all the dependencies and installs RKE to target machines. This playbook has s3 integration which means if you set "aws_enabled" to true in "general-config.yml" you have to provide credentials in "aws-config.yml" don't worry this file is not tracked with git.

s3 integration saves rke state file and kubeconfig to target bucket which can be configured at "aws-config.yml" if you set "aws_enabled" to true. Setting "project_environment" sets file prefixes so you can use the same bucket for different environments. s3 integration also provides getting rke state file from s3 before "rke up" so state is not lost. This operation won't fail since it may be first time you run this playbook and s3 files are not there.



### How to use this playbook

- You need to clone this on jump server for the installation. 
- You need to provide configuration variables in the "./vars/general-config.yaml" (server ip addresses, aws config etc.)
- You can configure extra rke configs in "./roles/rke-install/templates/local_cluster.yaml" file.
- Make sure you have minimum python 2.7 and pip installed.
- Install ansible via pip "pip install ansible".(not automated since the OS may not have python installed).
- Run "provision.sh".



#### Testing the playbook

There is "./test" directory as dedicated test environment. It has its own ansible.cfg, inventory and provision.sh files. Everything is preconfigured. Just edit Vagrantfile to change boxes or something else. To run test environment:

- vagrant up
- vagrant ssh ansible
- bash provision.sh
