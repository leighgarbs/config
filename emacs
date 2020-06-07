;; Inhibit the startup screen
(setq inhibit-startup-screen t)

;; Assume buffers contain text by default
(setq-default major-mode 'text-mode)

;; Set background and foreground (text) colors
(set-background-color "black")
(set-foreground-color "white")
(set-cursor-color "white")

;; Add packages
(require 'package)

(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; GNU Emacs Lisp Package Archive
;; For important compatibility libraries like cl-lib
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(setq whitespace-line-column 95)
(global-whitespace-mode t)

;; Insert spaces in place of tabs
(setq-default indent-tabs-mode nil)

(defun common-text-settings ()
  (auto-fill-mode 1)
  (set-fill-column 95)
  (setq require-final-newline 'ask)
  (turn-on-auto-fill))

(add-hook 'c-mode-common-hook 'common-text-settings)
(add-hook 'groovy-mode-hook 'common-text-settings)
(add-hook 'python-mode-hook 'common-text-settings)
(add-hook 'text-mode-hook 'common-text-settings)
(add-hook 'yaml-mode-hook 'common-text-settings)

;; Linux style C intenting
(setq c-default-style "linux" c-basic-offset 4)

;; Makes it so site-specific stuff can be used from .emacs.d/lisp
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
