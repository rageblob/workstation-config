#!/bin/bash

# install Brew if it doesn't exist
if ! command -v brew &>/dev/null; then
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi

# tell homebrew about the font repository
brew tap homebrew/cask-fonts

# update the index
brew update

# install formulae (terminal programs)
cat $(PWD)/src/brew/formulae | xargs brew install --formula
# install casks (full featured standalone GUI programs)
cat $(PWD)/src/brew/casks | xargs brew install --cask

# make sure everything is up to date
brew upgrade
