#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -alrht'
alias feh='feh -. --image-bg white'
alias onedrive_upload='onedrive --synchronize --upload-only --force'
alias grep='grep --color=auto'
alias day='date "+%Y-%m-%d"'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
PS1='[\u@\h \W]\$ '


export PROMPT_COMMAND='history -a'
export HISTTIMEFORMAT="%F %T "

set -o vi
export EDITOR=nvim
eval "$(zoxide init bash)"

export PATH="$HOME/bin:$PATH"

xset r rate 180 18
