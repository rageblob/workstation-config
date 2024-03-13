# Workstation-config

My personal workstation setup.

## MacOS setup

Run `make brew` to

- install brew
- update its database
- install nerd fonts
- install all the relevant packages needed to work.

## ZSH config

Run `make init_shell` in order to copy the contents of `shell_config` directory
to `$HOME/.config/zsh/`.
Afterwards run `make cleanup` to have zsh automatically source these config
files in the future.

## Testing

Run `make test` to verify `make` works as expected.
