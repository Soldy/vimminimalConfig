HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
color_prompt=yes
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\$\[\033[00m\] '
alias ls='ls -al --color=auto'
alias grep='grep --color=auto'
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
set -o vi
stty -ixon
export PATH=$PATH:/opt/bin

setxkbmap -option caps:swapescape
