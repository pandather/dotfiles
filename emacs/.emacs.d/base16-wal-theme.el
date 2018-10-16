(require 'base16-theme)

;; colours generated dynamically by wal
(defun set-wal-colors () (setq base16-wal-colors
			       '(:base00 "#3f1216"
					 :base01 "#2966A3"
					 :base02 "#5D5E9B"
					 :base03 "#444DA8"
					 :base04 "#AD6A90"
					 :base05 "#6292A8"
					 :base06 "#4BA6BF"
					 :base07 "#c6c6c9"
					 :base08 "#8a8a8c"
					 :base09 "#2966A3"
					 :base0A "#5D5E9B"
					 :base0B "#444DA8"
					 :base0C "#AD6A90"
					 :base0D "#6292A8"
					 :base0E "#4BA6BF"
					 :base0F "#c6c6c9")))

(defvar base16-wal-colors nil "All colors for base16-wal are defined here.")
(set-wal-colors)

;; Define the theme
(deftheme base16-wal)

;; Add all the faces to the theme
(base16-theme-define 'base16-wal base16-wal-colors)

;; Mark the theme as provided
(provide-theme 'base16-wal)

(provide 'base16-wal)
