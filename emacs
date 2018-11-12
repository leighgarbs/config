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

;; cmake-mode
(setq load-path (cons (expand-file-name "/Users/leigh/config") load-path))
(require 'cmake-mode)
