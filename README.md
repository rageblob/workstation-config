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

## iTerm2

### Keymap fix for German Keyboards

The default keymapping in iTerm2 is frustrating for those who use a Macbook with a physical German keyboard layout.
There, many key bindings produce counterintuitive effects.

The mappings in `src/iTerm2/GermanKeyboardLayout.itermkeymap` affect the following changes:

- **Option + Left/Right Arrow**: Move Cursor one word left/right (same as in the native MacOS terminal)
- **Option + Backspace**: Delete word left of cursor
- **Cmd + Backspace**: Delete current line
- **Cmd + Left/Right Arrow**: Move cursor to beginning/end of line
- **Cmd + Z**: Undo

### Color schemes

`src/iTerm2/` contains custom color schemes for iTerm2.

## Testing

Run `make test` to verify `make` works as expected.
