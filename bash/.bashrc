#
# ~/.bashrc
#

#Setting Editor
export EDITOR="vim"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Sourcing fzf completions
. /usr/share/fzf/key-bindings.bash
. /usr/share/fzf/completion.bash






# Aliases
alias ls='ls --color=auto'
alias scloud='ssh -p 2227 kizzy@192.168.254.120'
alias exip='/home/kizzy/.scripts/exip.sh'
alias sbalt='mosh -p 60000 --ssh="ssh -p 2224" kizzy@104.236.168.36'
alias lunabay='mosh -p 60000 kizzy@146.185.182.228'
alias pacmirror='sudo /home/kizzy/.scripts/pacmirror.sh'
alias ad='ssh kizzy@192.168.254.119'
alias mine='mosh -p 60000 --ssh="ssh -p 2224 -i ~/.ssh/minecraftserver_rsa" decon@ums.nsupdate.info'
alias bmon='bmon -i netlink:notc'
alias gs='mosh -p 60000 --ssh="ssh -p 2224 -i ~/.ssh/gameserver_rsa" mane@gs.nsupdate.info' 
alias feh='feh -Tpictureview'
alias tunnelssh='echo "ssh -p 2224 -D 1337 -C -N kizzy@104.236.168.36"'
alias cdst='ssh -N -L 8888:localhost:8384 kizzy@192.168.254.120 -p 2227'
alias tailsbox='mosh -p 60000 --ssh="ssh -p 1337" kizzy@tailsbox.nsupdate.info'
# Print a pony with a random message, currently not working though as ponypipe and ponysay arn't availible in repos?
#fortune | ponypipe | ponysay


#PS1='[\u@\h \W]\$ '
PS1=':\[$(tput sgr0)\]'
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

