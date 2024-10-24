#!/bin/bash

# determine OS family
OS=$(uname)

# Ansible available in /usr/bin/ ?
if ! [[ -x "$(command -v ansible)" ]]; then
  # On MacOS, first install homebrew, then ansible
  if [[ "$OS" == "Darwin" ]]; then
    $PWD/scripts/brew/ensure_brew.sh
    brew install ansible
  elif [[ "$OS" == "Linux" ]]; then
    # determine linux distribution
    DISTRO=$(cat /etc/os-release | grep ^ID= | sed s/ID=//g)
    if [[ "$DISTRO" == "ubuntu" ]]; then
      sudo apt update
      sudo apt install software-properties-common
      sudo add-apt-repository --yes --update ppa:ansible/ansible
      sudo apt install ansible -y
    elif [[ "$DISTRO" == "arch" ]]; then
      sudo pacman -S ansible --noconfirm
    fi
  fi
fi
