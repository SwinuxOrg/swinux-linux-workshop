#!/bin/sh

# Functions

get_count()
{
	gsettings get org.cinnamon.desktop.wm.preferences num-workspaces
}

set_count()
{
	gsettings set org.cinnamon.desktop.wm.preferences num-workspaces $1
}

# Variables

old_count=$(gsettings get org.cinnamon.desktop.wm.preferences num-workspaces)
new_count=$((old_count + 1))

# Main

gsettings set org.cinnamon.desktop.wm.preferences num-workspaces $new_count
sleep 1
wmctrl -s $old_count
