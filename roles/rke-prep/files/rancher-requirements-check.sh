#!/bin/bash
set -x
export USER=$1

load_kernel_modules(){
  curl https://rancher-requirements-check.kloia.com/module.list >> /etc/modules-load.d/modules.conf
}


check_user_permission(){
	id -n -G $USER
}

instance_resource_check(){
	echo "Memory $(free -h )"

}

check_docker_version(){
	echo "Docker Version : $(docker version)"
	echo "Docker status  : $(systemctl is-active docker)"

}

update_sysctl_params(){

	echo 'net.bridge.bridge-nf-call-ip6tables = 1' > /etc/sysctl.d/k8s.conf
        echo 'net.bridge.bridge-nf-call-iptables = 1' >> /etc/sysctl.d/k8s.conf
	echo 1 > /proc/sys/net/ipv4/ip_forward

        sysctl --system
	sysctl -p
        swapoff -a

}


load_kernel_modules
check_user_permission
instance_resource_check
check_docker_version
update_sysctl_params