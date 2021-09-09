# init keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# export keyring
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

#compton &
setxkbmap -option caps:escape &
sxhkd &
sh /home/ziggy/.screenlayout/default.sh &
ntpd -qg
exec dbus-launch &
exec bspwm

