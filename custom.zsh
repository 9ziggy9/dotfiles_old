#Typical aliases
alias neofetch="echo '\n' && neofetch"
alias chat="discord & slack &"
alias aledit="nvim /home/ziggy/.oh-my-zsh/custom/custom.zsh"

#alias to shell scripts
alias grab="$HOME/SCRIPTS/grab.sh"

#Flatpaks
alias zoom="flatpak run us.zoom.Zoom &"
alias discord="dbus-run-session flatpak run com.discordapp.Discord"
alias slack="dbus-run-session flatpak run com.slack.Slack"

em () {
  setsid emacs $1; exit;
}
emz () {
  find ~ -print | fzf | xargs -I{} /home/ziggy/SCRIPTS/sub_em.sh {};
}
tty_cpu ()
{
  vmstat -n 1 | gawk '{ print 100-int($(NF-2)); fflush(); }' | ttyplot
}
fd ()
{
  cd $( find ~ -type d -print | fzf )
}
fe () {
  find ~ -print | fzf | xargs -I{} nvim {}
}
