# autocomplete
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# git
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
  vcs_info
}
setopt prompt_subst
zstyle ':vcs_info:git*' formats '[%b] '

# prompt
PROMPT='${vcs_info_msg_0_}%2~ > '

# alias
alias l='ls -alG'
alias clc='clear'
alias v='nvim'
alias vg='nvim +Git'
alias matlab='matlab -nosplash -nodesktop'

# environment variables
PATH=/usr/local/bin:$PATH
PATH=/usr/local/texlive/2019/bin/x86_64-darwin:$PATH
PATH=/Applications/MATLAB_R2019b.app/bin:$PATH
PATH=/usr/local/lib/ruby/gems/2.6.0/bin:$PATH
PATH=/usr/local/opt/ruby/bin:$PATH
LDFLAGS="-L/usr/local/opt/ruby/lib"
CPPFLAGS="-I/usr/local/opt/ruby/include"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# highlight
source /usr/local/share/zsh-syntax-highlighting/\
  zsh-syntax-highlighting.zsh
