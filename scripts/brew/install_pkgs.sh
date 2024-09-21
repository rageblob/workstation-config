#!/bin/bash

# install formulae (terminal programs)
cat $(PWD)/var/pkgs/brew/formulae | xargs brew install --formula
# install casks (full featured standalone GUI programs)
cat $(PWD)/var/pkgs/brew/casks | xargs brew install --cask
