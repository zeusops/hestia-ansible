#!/bin/sh

byobu-tmux new -d -s mc
tmux rename-window -t mc:0 server
tmux send-keys -t mc:server 'cd ~/current; ./wrap.sh' ENTER
