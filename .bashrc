#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# If stdin is a terminal
if [ -t 0 ]; then
    # Set GPG_TTY so gpg-agent knows where to prompt.  See gpg-agent(1)
    export GPG_TTY="$(tty)"
    # Set PINENTRY_USER_DATA so pinentry-auto knows to present a text UI.
    export PINENTRY_USER_DATA=USE_TTY=1
fi

# setup vi mode. super handy with a the mech mini i'm running with now
set -o vi
alias tmux="tmux -2"
