setenv PATH /usr/local/cuda/bin:$PATH
setenv LD_LIBRARY_PATH /usr/local/cuda/lib64:/usr/local/cuda/lib

set prompt = '[%n@%m] %c >> '
set autolist = ambiguous 
set complete = enhance 

alias l ls -a
alias ll ls -al
alias clc clear
alias v vim
alias vg vim +Git
alias check qstat -u yhu266
