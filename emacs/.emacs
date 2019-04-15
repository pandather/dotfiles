;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

;; [Font]
(add-to-list 'default-frame-alist
             '(font . "xos4 Terminus-8"))

;; [Backups]

(setq backup-directory-alist `(("." . "~/.backups")))
(setq backup-by-copying t)
(setq delete-old-versions t kept-new-versions 6 kept-old-versions 2 version-control t)

;; [Spaces & Tabs]
(setq-default indent-tabs-mode nil)

;; [IRC]
(require `tls)
(defun znc ()
  "Connect to ZNC server at sadbox.org."
  (interactive)
  (erc-tls :server "sadbox.org" :port 6697 :nick "pandather"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company-statistics company-math company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; [Company - Autocompletions]
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(global-set-key (kbd "M-/") 'company-complete-common-or-cycle)
(setq company-idle-delay 0)

;; [Flycheck - Syntax Checking]
(require 'company)
(global-flycheck-mode)

(require 'rtags)
(define-key c-mode-base-map (kbd "M-.") 'rtags-find-symbol-at-point)
(define-key c-mode-base-map (kbd "M-,") 'rtags-find-references-at-point)
(define-key c-mode-base-map (kbd "M-?") 'rtags-display-summary)
(rtags-enable-standard-keybindings)

;; Use rtags for auto-completion.
(require 'company-rtags)
(setq rtags-autostart-diagnostics t)
(rtags-diagnostics)
(setq rtags-completions-enabled t)
(push 'company-rtags company-backends)

;; Live code checking.
(require 'flycheck-rtags)
(defun setup-flycheck-rtags ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
  (setq-local flycheck-check-syntax-automatically nil)
  (rtags-set-periodic-reparse-timeout 2.0)  ;; Run flycheck 2 seconds after being idle.
  )
(add-hook 'c-mode-hook #'setup-flycheck-rtags)
(add-hook 'c++-mode-hook #'setup-flycheck-rtags)
