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
alias feh='feh --keep-zoom-vp'
PS1='[\u@\h \W]\$ '


export PROMPT_COMMAND='history -a'
export HISTTIMEFORMAT="%F %T "

set -o vi
export EDITOR=vim
eval "$(zoxide init bash)"

export PATH="$HOME/bin:$PATH"

xset r rate 500 28

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yli/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yli/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yli/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/yli/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

