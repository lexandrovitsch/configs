#!/bin/bash
hyprlock
sleep 2  # небольшая задержка, чтобы успеть заблокироваться
systemctl suspend-then-hibernate
