autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
PS1='%2~ >> '
alias clc='clear'
alias v='nvim'
alias vg='v +Git'
alias vp='v +CtrlP'
alias vm='v -M'
alias vn='v .'
alias t='tree -C'
alias qtop='watch --interval=1.0 qstat -a'
if [[ "$(uname 2> /dev/null)" == "Linux" ]]; then
	PATH=/usr/local/cuda/bin:$PATH
	export ZPLUG_HOME=/soe/yhu266/.zplug
	alias check='qstat -u yhu266'
elif [[ "$(uname 2> /dev/null)" == "Darwin" ]]; then
    PATH=/usr/local/bin:$PATH
    PATH=/usr/local/texlive/2020/bin/x86_64-darwin:$PATH
    PATH=/Applications/MATLAB_R2020a.app/bin:$PATH
    PATH=/usr/local/lib/ruby/gems/2.7.0/bin:$PATH
    PATH=/usr/local/opt/ruby/bin:$PATH
    LDFLAGS="-L/usr/local/opt/ruby/lib"
    CPPFLAGS="-I/usr/local/opt/ruby/include"
    export ZPLUG_HOME=/usr/local/opt/zplug
    alias matlab='matlab -nosplash -nodesktop'
    alias text='subl'
fi

source $ZPLUG_HOME/init.zsh
zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "supercrabtree/k"
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load

alias k='clc; k -a'
