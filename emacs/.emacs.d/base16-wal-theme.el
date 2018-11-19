(require 'base16-theme)

;; colours generated dynamically by wal
(defun set-wal-colors () (setq base16-wal-colors
			       '(:base00 "#2a1910"
					 :base01 "#F5964E"
					 :base02 "#D4A25C"
					 :base03 "#F6AD50"
					 :base04 "#FBB768"
					 :base05 "#EEC752"
					 :base06 "#D3CC6B"
					 :base07 "#f0dfaf"
					 :base08 "#a89c7a"
					 :base09 "#F5964E"
					 :base0A "#D4A25C"
					 :base0B "#F6AD50"
					 :base0C "#FBB768"
					 :base0D "#EEC752"
					 :base0E "#D3CC6B"
					 :base0F "#f0dfaf")))

(defvar base16-wal-colors nil "All colors for base16-wal are defined here.")
(set-wal-colors)

;; Define the theme
(deftheme base16-wal)

;; Add all the faces to the theme
(base16-theme-define 'base16-wal base16-wal-colors)

;; Mark the theme as provided
(provide-theme 'base16-wal)

(provide 'base16-wal)
