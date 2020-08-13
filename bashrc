#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias wifi='sudo wifi-menu -o wlo1'

alias config='sudo vim .config/i3/config'

alias updategrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

alias :sdn='shutdown now'

alias :q='exit'

alias configbar='vim /etc/i3blocks.conf'

alias :cs1='i3-msg exit'

alias :cs2='i3-msg exit && loginctl terminate-session'

alias pantalla='xrandr --output HDMI1 -- mode 1680x1050 --left-of LVDS1'

alias upantalla='xrandr --output HDMI1 --off'

alias ufire='killall firefox'

alias ports='sudo lsof -i -P -n'

PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

eval "$(rbenv init -)"
