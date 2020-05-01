if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

DEFAULT=$PS1
PS1="[\u@\h] \w >> "

alias l="ls -a"
alias k="ls -al"
alias clc="clear"
alias v="vim"
alias vg="v +Git +only"
alias vp="v +CtrlP"
alias vm="v -M"
alias vn="v ."
alias check="squeue --user=yhu266"
