#!/bin/sh

player_metadata=$(playerctl metadata -af "{{status}}:{{artist}} - {{title}}" --player=playerctld)
player_status=$(echo "$player_metadata" | cut -d ":" -f1)
player_info=$(echo "$player_metadata"  | cut -d ":" -f2-)

if [ "$player_status" = "Playing" ]; then
    echo "   $player_info"
elif [ "$player_status" = "Paused" ]; then
    echo "   $player_info"
else
    echo ""
fi

