setenv PATH /usr/local/cuda/bin:$PATH
setenv LD_LIBRARY_PATH /usr/local/cuda/lib64:/usr/local/cuda/lib

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
alias check="qstat -u yhu266"
