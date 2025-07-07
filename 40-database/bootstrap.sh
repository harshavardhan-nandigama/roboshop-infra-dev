#!/bin/bash
set -e
set -x  # enables command tracing

component=$1
env=$2

dnf install -y git ansible
ansible-pull -U https://github.com/harshavardhan-nandigama/ansible-roles-tf.git -e component=$component -e env=$env main.yaml
