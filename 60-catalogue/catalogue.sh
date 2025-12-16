#!/bin/bash

component=$1
dnf install ansible -y
ansible-pull -U https://github.com/Eswar1233/ansible-roboshop-roles.git -e component=$component  main.yaml