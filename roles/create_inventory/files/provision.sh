#!/usr/bin/env bash

#
# Run with:
#
# ./provision.sh |& tee openshift.log
#
# 

export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook -i ~{{instance_user}}/inventory ~{{instance_user}}/openshift-ansible/playbooks/prerequisites.yml
ansible-playbook -i ~{{instance_user}}/inventory ~{{instance_user}}/openshift-ansible/playbooks/deploy_cluster.yml
