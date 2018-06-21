if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi

export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1
export GDK_SCALE=1
export GDK_DPI_SCALE=1
