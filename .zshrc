stty -ixon

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

PS1='%2~ >> '

alias clc='clear'
alias l='clc; ls -Gal'
alias v='nvim'
alias vg='v +Git +only'
alias vp='v +CtrlP'
alias vm='v -M'
alias vn='v .'
alias matlab='matlab -nosplash -nodesktop'

PATH=/usr/local/bin:$PATH
PATH=/usr/local/texlive/2020/bin/x86_64-darwin:$PATH
PATH=/Applications/MATLAB_R2020a.app/bin:$PATH
PATH=/usr/local/lib/ruby/gems/2.7.0/bin:$PATH
PATH=/usr/local/opt/ruby/bin:$PATH
LDFLAGS="-L/usr/local/opt/ruby/lib"
CPPFLAGS="-I/usr/local/opt/ruby/include"
