(require 'base16-theme)

;; colours generated dynamically by wal
(defun set-wal-colors () (setq base16-wal-colors
			       '(:base00 "#0C0A02"
					 :base01 "#597886"
					 :base02 "#6F8F97"
					 :base03 "#7BA8C2"
					 :base04 "#99A5A3"
					 :base05 "#CCC6B3"
					 :base06 "#9BB8C5"
					 :base07 "#ced9db"
					 :base08 "#909799"
					 :base09 "#597886"
					 :base0A "#6F8F97"
					 :base0B "#7BA8C2"
					 :base0C "#99A5A3"
					 :base0D "#CCC6B3"
					 :base0E "#9BB8C5"
					 :base0F "#ced9db")))

(defvar base16-wal-colors nil "All colors for base16-wal are defined here.")
(set-wal-colors)

;; Define the theme
(deftheme base16-wal)

;; Add all the faces to the theme
(base16-theme-define 'base16-wal base16-wal-colors)

;; Mark the theme as provided
(provide-theme 'base16-wal)

(provide 'base16-wal)
