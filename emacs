;; Inhibit the startup screen
(setq inhibit-startup-screen t)

;; Set background and foreground (text) colors
(set-background-color "black")
(set-foreground-color "white")
(set-cursor-color     "white")

;; Some common text settings
(defun common-text-settings ()
  (auto-fill-mode 1)
  (set-fill-column 80)
  (setq require-final-newline t))

;; Set fill parameters for text
(add-hook 'text-mode-hook 'common-text-settings)

;; Set fill parameters for C and C++
(add-hook 'c-mode-common-hook 'common-text-settings)

;; linux style C intenting
(setq c-default-style "linux" c-basic-offset 4)

;; highlight characters that go past whitespace-line-column
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

;; insert spaces in place of tabs
(setq-default indent-tabs-mode nil)

;; autowrap lines in all text buffers
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Adds the melpa-stable package repository as a package source
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; This was added automatically when I installed groovy-mode, not sure why it's
;; here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (cmake-mode groovy-mode))))

;; This was added automatically when I installed groovy-mode, not sure why it's
;; here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
