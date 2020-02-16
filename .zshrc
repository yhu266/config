# autocomplete
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# prompt
PS1='%2~ >> '

# alias
alias l='ls -alG'
alias clc='clear'
alias v='nvim'
alias vg='nvim +Git'
alias vp='nvim +CtrlP'
alias vm='nvim -M'
alias matlab='matlab -nosplash -nodesktop'
alias stext='subl'

# environment variables
PATH=/usr/local/bin:$PATH
PATH=/usr/local/texlive/2019/bin/x86_64-darwin:$PATH
PATH=/Applications/MATLAB_R2019b.app/bin:$PATH
PATH=/usr/local/lib/ruby/gems/2.6.0/bin:$PATH
PATH=/usr/local/opt/ruby/bin:$PATH
LDFLAGS="-L/usr/local/opt/ruby/lib"
CPPFLAGS="-I/usr/local/opt/ruby/include"
