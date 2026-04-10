#!/bin/bash
dbus-monitor --system "type='signal',interface='org.freedesktop.login1.Manager',member='PrepareForSleep'" | while read line; do
    if echo "$line" | grep -q "false"; then
        hyprlock
    fi
done
