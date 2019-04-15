zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle :compinstall filename "${HOME}/.zshrc"

autoload -Uz compinit promptinit
compinit
promptinit; prompt gentoo

if typeset -p TERM 2> /dev/null | grep 'TERM=dumb'; then
    unset zle_bracketed_paste
fi

bindkey -e

alias e='emacsclient -c'
