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

module load slurm/18.08.4
module load git/2.23.0
# module load openmpi/4.0.1-cuda
module load openmpi/4.0.1
# module load cuda10.1/10.1.168
module load hdf5_gnu/1.10.6-parallel

# vi:ft=sh
