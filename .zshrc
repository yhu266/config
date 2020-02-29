# autocomplete
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# prompt
PS1='%2~ >> '

# alias
alias clc='clear'
alias vg='v +Git'
alias vp='v +CtrlP'
alias vm='v -M'
alias t='tree -C'

# zplug
if [[ "$(uname 2> /dev/null)" == "Linux" ]]; then
    # alias
    alias v='vim'
    export ZPLUG_HOME=/soe/yhu266/.zplug
elif [[ "$(uname 2> /dev/null)" == "Darwin" ]]; then
    # alias
    alias v='nvim'
    alias matlab='matlab -nosplash -nodesktop'
    alias text='subl'
    # environment variables
    PATH=/usr/local/bin:$PATH
    PATH=/usr/local/texlive/2019/bin/x86_64-darwin:$PATH
    PATH=/Applications/MATLAB_R2019b.app/bin:$PATH
    PATH=/usr/local/lib/ruby/gems/2.6.0/bin:$PATH
    PATH=/usr/local/opt/ruby/bin:$PATH
    LDFLAGS="-L/usr/local/opt/ruby/lib"
    CPPFLAGS="-I/usr/local/opt/ruby/include"
    export ZPLUG_HOME=/usr/local/opt/zplug
fi
source $ZPLUG_HOME/init.zsh

zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "supercrabtree/k"

# install plug-in
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

alias k='k -a'
