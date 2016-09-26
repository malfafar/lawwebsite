#!/bin/bash

ansible-playbook $@ -i inventory ../ansible/deploy.yml --ask-vault-pass
