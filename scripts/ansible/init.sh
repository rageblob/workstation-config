#!/bin/bash

DIR=$PWD

cd ansible
ansible-playbook main.yml

cd DIR
