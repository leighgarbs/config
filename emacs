;; Inhibit the startup screen
(setq inhibit-startup-screen t)

;; Assume buffers contain text by default
(setq-default major-mode 'text-mode)

;; Set background and foreground (text) colors
(set-background-color "black")
(set-foreground-color "white")
(set-cursor-color     "white")

;; Adds the melpa-stable package repository as a package source
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; Some common text settings
(defun common-text-settings ()
  (auto-fill-mode 1)
  (set-fill-column 95)
  (setq require-final-newline 1))

;; highlight characters that go past whitespace-line-column
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(setq whitespace-line-column 95)
(global-whitespace-mode t)

;; Text settings for commonly-used major modes
(add-hook 'text-mode-hook 'common-text-settings)
(add-hook 'c-mode-common-hook 'common-text-settings)
(add-hook 'groovy-mode-hook 'common-text-settings)
(add-hook 'yaml-mode-hook 'common-text-settings)

;; linux style C intenting
(setq c-default-style "linux" c-basic-offset 4)

;; insert spaces in place of tabs
(setq-default indent-tabs-mode nil)

(load-file "~/stol-mode/stol-mode.el")

;; This was added automatically when I installed groovy-mode, not sure why it's
;; here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (web-mode yaml-mode cmake-mode groovy-mode))))

;; This was added automatically when I installed groovy-mode, not sure why it's
;; here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
