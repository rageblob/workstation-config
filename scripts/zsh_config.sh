#!/bin/bash

# create zsh config folder if it doesn't exist
# otherwise create a backup
if ! [[ -d "$HOME/.config/zsh" ]]; then
	mkdir $HOME/.config/zsh/
else
	mv $HOME/.config/zsh{,.bak}
fi

# link the config files to the zsh config folder
ln $PWD/src/zsh/aliases $HOME/.config/zsh/aliases
ln $PWD/src/zsh/env $HOME/.config/zsh/env
ln $PWD/src/zsh/settings $HOME/.config/zsh/settings
ln $PWD/src/zsh/xdg_spec $HOME/.config/zsh/xdg_spec
