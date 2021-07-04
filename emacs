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
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; GNU Emacs Lisp Package Archive
;; For important compatibility libraries like cl-lib
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(setq whitespace-line-column 110)
(global-whitespace-mode t)

;; Insert spaces in place of tabs
(setq-default indent-tabs-mode nil)

(defun common-text-settings (hook fill-column)
  (add-hook hook
            `(lambda ()
               (auto-fill-mode t)
               (set-fill-column ,fill-column)
               (setq require-final-newline 'ask)
               (turn-on-auto-fill))))

(common-text-settings 'c-mode-common-hook 'whitespace-line-column)
(common-text-settings 'cmake-mode-hook 'whitespace-line-column)
(common-text-settings 'git-commit-mode-hook 72)
(common-text-settings 'groovy-mode-hook 'whitespace-line-column)
(common-text-settings 'python-mode-hook 'whitespace-line-column)
(common-text-settings 'sh-mode-hook 'whitespace-line-column)
(common-text-settings 'text-mode-hook 'whitespace-line-column)
(common-text-settings 'yaml-mode-hook 'whitespace-line-column)

(setq auto-mode-alist (append '(("\\CMakeLists.txt\\'" . cmake-mode)) auto-mode-alist))

;; Linux style C intenting
(setq c-default-style "linux" c-basic-offset 4)

;; Makes it so site-specific stuff can be used from .emacs.d/lisp
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Is there a better way to do this?
(load-file "~/.emacs.d/elpa/git-commit/git-commit.el")
