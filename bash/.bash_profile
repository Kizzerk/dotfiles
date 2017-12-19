#
# ~/.bash_profile
#

PATH="${PATH}:${HOME}/bin"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[[ -f ~/.bashrc ]] && . ~/.bashrc


