#!/bin/bash

SESH="coding"
# check for session
tmux has-session -t $SESH 2>/dev/null
# define desired session structure
if [[ $? != 0 ]]; then
  # create new session and rename first window
  tmux new-session -d -s $SESH -n "editor"
  # cd into coding dir and open nvim
  tmux send-keys -t $SESH:editor "cd ~/Documents/Code/" C-m
  tmux send-keys -t $SESH:editor "nvim ." C-m
  # create second window
  tmux new-window -t $SESH -n "home"
  tmux send-keys -t $SESH:home "cd ~" C-m
  # select first window
  tmux select-window -t $SESH:editor
fi
# attach the session
tmux a -t $SESH
