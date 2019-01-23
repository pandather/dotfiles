; [Backups]

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq backup-directory-alist `(("." . "~/.backups")))
(setq backup-by-copying t)
(setq delete-old-versions t kept-new-versions 6 kept-old-versions 2 version-control t)

; [Spaces & Tabs]
(setq-default indent-tabs-mode nil)

; [IRC]
(require `tls)
(defun znc ()
  "Connect to ZNC server at sadbox.org."
  (interactive)
  (erc-tls :server "sadbox.org" :port 6697 :nick "pandather"))
