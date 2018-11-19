; [Backups]
(setq backup-directory-alist `(("." . "~/.backups")))
(setq backup-by-copying t)
(setq delete-old-versions t kept-new-versions 6 kept-old-versions 2 version-control t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (xresources-theme pallet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Envy Code R" :foundry "ENVY" :slant normal :weight normal :height 92 :width normal)))))

(require 'cask "~/bin/cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(defun refresh-theme ()
  (progn
    (load-theme 'base16-wal t)))

(defun theme-callback (event)
  (refresh-theme))

(require 'filenotify)
(file-notify-add-watch
  "~/.emacs.d/base16-wal-theme.el" '(change) 'theme-callback)

(require `tls)
(defun znc ()
  "Connect to ZNC server at sadbox.org."
  (interactive)
  (erc-tls :server "sadbox.org" :port 6697 :nick "pandather"))
