## Restart waybar

#!bin/bash

run_waybar() {
    waybar
}

restart_waybar() {
    pid=$(pgrep waybar)
    [[ ! -z $pid ]] && kill $pid
    run_waybar
}

restart_waybar
