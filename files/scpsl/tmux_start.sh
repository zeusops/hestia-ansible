#!/bin/sh
# Managed by Ansible

byobu-tmux new -d -s scpsl
tmux rename-window -t scpsl:0 server
tmux send-keys -t scpsl:server 'cd ~/server; ./LocalAdmin 7777' ENTER
