#!/bin/bash

# create zsh config folder if it doesn't exist
# otherwise create a backup
if ! [[ -d "$HOME/.config/zsh" ]]; then
	mkdir $HOME/.config/zsh/
else
	mv $HOME/.config/zsh{,.bak}
fi

# link the config files to the zsh config folder
ln $PWD/shell_config/aliases $HOME/.config/zsh/aliases
ln $PWD/shell_config/env $HOME/.config/zsh/env
ln $PWD/shell_config/settings $HOME/.config/zsh/settings
ln $PWD/shell_config/xdg_spec $HOME/.config/zsh/xdg_spec
