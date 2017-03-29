#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ctrl='sudo loadkeys /etc/personal.map'
alias iwdown='sudo ip link set wlp3s0 down'

alias iwup='sudo ip link set wlp3s0 up'
alias randmac='sudo macchanger -r wlp3s0'

alias ram='screenfetch -n | grep "RAM:"'
