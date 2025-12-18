#!/bin/bash

component=$1
dnf install ansible -y
ansible-pull -U https://github.com/Eswar1233/ansible-roboshop-roles-tf.git -e component=$component  -e env=$2 main.yaml