LANG="en_US.UTF-8"
LC_COLLATE="C"
PATH="/usr/bin/rc:${PATH}:${HOME}/.local/bin::"
EDITOR='emacsclient -c'
GTK2_RC_FILES="${HOME}/.cache/wal"
GDK_SCALE=1
GDK_DPI_SCALE=1
QT_SCALE_FACTOR=1
XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
if ! test -d "${XDG_RUNTIME_DIR}"; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"
fi
# ZSH Settings
HISTFILE="${HOME}/.histfile"
HISTSIZE=1000
SAVEHIST=1000

PROMPT='%m%% '

export LANG LC_COLLATE PATH EDITOR GTK2_RC_FILES GDK_SCALE GDK_DPI_SCALE HISTFILE HISTSIZE SAVEHIST PROMPT XDG_RUNTIME_DIR

emacs --bg-daemon
rdm --daemon
# exec startx
