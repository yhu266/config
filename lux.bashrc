stty -ixon

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

DEFAULT=$PS1
PS1="\w >> "

alias clc="clear"
alias l="clc; ls -al"
alias v="vim"
alias vg="v +Git +only"
alias vp="v +CtrlP"
alias vm="v -M"
alias vn="v ."
alias check="squeue --user=yhu266"

module load slurm
