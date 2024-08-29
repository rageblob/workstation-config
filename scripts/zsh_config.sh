#!/bin/bash

# create zsh config folder if it doesn't exist
# otherwise create a backup
if ! [[ -d "$HOME/.config/zsh" ]]; then
  mkdir $HOME/.config/zsh/
else
  mv $HOME/.config/zsh{,.bak}
fi

# link the config files to the zsh config folder
ln $PWD/src/shell/aliases $HOME/.config/zsh/aliases
ln $PWD/src/shell/env $HOME/.config/zsh/env
ln $PWD/src/shell/zsh_cfg $HOME/.config/zsh/settings
ln $PWD/src/shell/xdg_spec $HOME/.config/zsh/xdg_spec
