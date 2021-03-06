if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

DEFAULT=$PS1
PS1="[\u@\h] \w > "

alias l="ls -a"
alias ll="ls -al"
alias clc="clear"
alias v="vim"
alias vg="vim +Git"
alias check="squeue --user=yhu266"
alias checkp="squeue -p 96x24gpu4"

module restore yhu266
