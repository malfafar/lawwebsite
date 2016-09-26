#!/bin/bash

ansible-playbook $@ -i inventory ../ansible/deploy.yml --vault-password-file ~/ansible_vault/conservadores.txt
