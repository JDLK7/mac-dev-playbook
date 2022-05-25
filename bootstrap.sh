#!/bin/bash

# Install Apple command line tools
xcode-select --install

# Install homebrew (not unatended)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install ansible
brew install ansible

# Install required Ansible roles
ansible-galaxy install -r requirements.yml

# Run playbook asking for become password
ansible-playbook main.yml --ask-become-pass
