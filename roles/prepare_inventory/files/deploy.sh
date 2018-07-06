#!/usr/bin/env bash

#
# Run with:
#
# ./deploy.sh |& tee deploy.log
#
# 

export ANSIBLE_HOST_KEY_CHECKING=False

#ansible-playbook -i ~{{instance_user}}/inventory ~{{instance_user}}/openshift-ansible/playbooks/prerequisites.yml
ansible-playbook -i ~{{instance_user}}/inventory ~{{instance_user}}/openshift-ansible/playbooks/deploy_cluster.yml
