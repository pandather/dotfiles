# ZSH Settings
export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=1000

# Global Settings
export PATH=${PATH}:${HOME}/bin
export EDITOR='emacsclient -t'
export ALTERNATE_EDITOR="emacs --daemon && $EDITOR"
export PROMPT=$'%m%% '
export GTK2_RC_FILES=~/.cache/wal

# exec startx
