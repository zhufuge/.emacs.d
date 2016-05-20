;; Setting By 6ml
;; Time-stamp: <2015-10-30 Friday by 6ml>

;;Personal information
(setq user-full-name "6ml")
(setq user-mail-address "344655454@qq.com")
(setenv "PATH" (concat (getenv "PATH")))
(setq default-directory "C:/Users/L6ml/Desktop/")

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-func)
(require 'init-better-defaults)
(require 'init-ui)
(require 'init-packages)
(require 'init-org)
(require 'init-keybindings)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)
