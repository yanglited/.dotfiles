#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias day='date "+%Y-%m-%d"'
PS1='[\u@\h \W]\$ '
