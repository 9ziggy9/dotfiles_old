#! /bin/bash

#htop
alacritty -e htop &
sleep 0.5;
bspc node -o 0.50 -p east
alacritty --config-file /home/ziggy/.config/alacritty/alacritty_small.yml -e /home/ziggy/SCRIPTS/substat_cpu.sh &
#file manager
sleep 0.5;
bspc node -o 0.25 -p south
alacritty -e ranger &
#mixer
sleep 0.5;
bspc node -o 0.80 -p south
alacritty -e pulsemixer &
#neofetch
sleep 0.5;
bspc node -f north
bspc node -f north
bspc node -o 0.55 -p east
alacritty --hold --config-file /home/ziggy/.config/alacritty/alacritty_small.yml -e /home/ziggy/SCRIPTS/substat_neo.sh &
#io monitoring (atop)
sleep 0.5;
bspc node -f west
bspc node -f west  
bspc node -o .60 -p south
alacritty -e atop 1 &
