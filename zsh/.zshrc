zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

if typeset -p TERM 2> /dev/null | grep 'TERM=dumb'; then
    unset zle_bracketed_paste
fi

bindkey -e
alias e='$=EDITOR'
