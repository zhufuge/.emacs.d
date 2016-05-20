1(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )
(require 'cl)

(defvar 6ml/packages '(
	       powerline
	       which-key
               swiper
               counsel
               js2-mode
	       js2-refactor
               nodejs-repl
	       flycheck
	       popwin
	       window-numbering
	       smartparens
	       expand-region
	       multiple-cursors
	       google-c-style
	       web-mode
	       ace-jump-mode
	       auto-complete
	       yasnippet
	       auto-yasnippet
	       ) "Default packages")

(setq package-selected-packages 6ml/packages)

(defun 6ml/packages-installed-p ()
    (loop for pkg in 6ml/packages
          when (not (package-installed-p pkg)) do (return nil)
          finally (return t)))

(unless (6ml/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg 6ml/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))


(require 'yasnippet)
(yas-global-mode 1)


(require 'ace-jump-mode)
(require 'multiple-cursors)

(ac-config-default)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

(which-key-mode 1)


(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
(sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)

(global-highlight-parentheses-mode t)

(require 'window-numbering)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))
(window-numbering-mode 1)


(require 'popwin)
(popwin-mode t)


(require 'powerline)
(powerline-default-theme)


(require 'color-theme)
(require 'color-theme-gruber-darker)
(color-theme-gruber-darker)

(add-hook 'c-mode-common-hook 'google-set-c-style)
(defun my-c-mode-hook()
  (setq c-basic-offset 4
        indent-tabs-mode t
        default-tab-width 4))
(add-hook 'c-mode-hook 'my-c-mode-hook)

(setq auto-mode-alist
      ;; 将文件模式和文件后缀关联起来
      (append '(("\\.py\\'" . python-mode)
		("\\.h\\'" . c-mode)
                ("\\.html\\'" . web-mode)
                ("\\.css\\'" . css-mode)
		("\\.js\\'" . js2-mode))
              auto-mode-alist))

(defun my-web-mode-indent-setup ()
  (setq web-mode-markup-indent-offset 2) ; web-mode, html tag in html file
  (setq web-mode-css-indent-offset 2)    ; web-mode, css in html file
  (setq web-mode-code-indent-offset 2)   ; web-mode, js code in html file
  )
(add-hook 'web-mode-hook 'my-web-mode-indent-setup)


(defun my-toggle-web-indent ()
  (interactive)
  ;; web development
  (if (or (eq major-mode 'js-mode) (eq major-mode 'js2-mode))
      (progn
        (setq js-indent-level (if (= js-indent-level 2) 4 2))
        (setq js2-basic-offset (if (= js2-basic-offset 2) 4 2))))

  (if (eq major-mode 'web-mode)
      (progn (setq web-mode-markup-indent-offset (if (= web-mode-markup-indent-offset 2) 4 2))
             (setq web-mode-css-indent-offset (if (= web-mode-css-indent-offset 2) 4 2))
             (setq web-mode-code-indent-offset (if (= web-mode-code-indent-offset 2) 4 2))))
  (if (eq major-mode 'css-mode)
      (setq css-indent-offset (if (= css-indent-offset 2) 4 2)))

  (setq indent-tabs-mode nil))

(add-hook 'js2-mode-hook #'js2-refactor-mode)

(add-hook 'js2-mode-hook 'flycheck-mode)


(provide 'init-packages)
