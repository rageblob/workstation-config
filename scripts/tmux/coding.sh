#!/bin/bash

SESSION="coding"
# check for session
tmux has-session -t $SESSION 2>/dev/null
# define desired session structure
if [[ $? != 0 ]]; then
  # create new session and rename first window
  tmux new-session -d -s $SESSION -n "editor"
  # cd into coding dir and open nvim
  tmux send-keys -t $SESSION:editor "cd ~/Documents/Code/" C-m
  tmux send-keys -t $SESSION:editor "nvim ." C-m
  # create second window
  tmux new-window -t $SESSION -n "home"
  tmux send-keys -t $SESSION:home "cd ~" C-m
  tmux send-keys -t $SESSION:home "clear" C-m
  # select first window
  tmux select-window -t $SESSION:editor
fi
# attach the session
tmux a -t $SESSION
