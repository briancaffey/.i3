#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias zzz='systemctl suspend'
alias s='yaourt'
alias jj='cd ~/Documents/github/briancaffey.github.io && jekyll serve'

PS1='[\u@\h \W]\$ '

# ruby gems
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# public ip address
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'

# pywal
setsid wal -r

# neofetch centered on terminal window:
printf "\n"
offset=$(( $(( $(tput cols)  / 2  ))  - 38  ))
n=$(( $offset > 0 ? $offset : 0 )); 
neofetch | sed "s/^/$(head -c $n < /dev/zero | tr '\0' '\ ';)/"
printf "\n"

# binary clock
PATH=~/Documents/bash/binaryclock:$PATH
