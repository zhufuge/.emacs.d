(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-c a") 'org-agenda)


(global-set-key (kbd "M-[") 'previous-buffer)
(global-set-key (kbd "M-]") 'next-buffer)

(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)


(global-set-key [f1] 'delete-other-windows)
(global-set-key [f2] 'split-window-below)
(global-set-key [f3] 'split-window-right)
(global-set-key [f4] 'delete-window)

(global-set-key [f7] 'recentf-open-files)
(global-set-key [f8] 'calendar)
(global-set-key [f9] 'speedbar)
(global-set-key [f10] 'open-eshell-other-buffer)
(global-set-key [f11] 'toggle-frame-fullscreen)
(global-set-key [f12] 'list-bookmarks)


(global-set-key (kbd "C-<tab>") 'hs-toggle-hiding)

(global-unset-key (kbd "M-j"))
(global-set-key (kbd "M-j l") 'select-current-line)
(global-set-key (kbd "M-j d") 'mark-defun)
(global-set-key (kbd "M-j b") 'mark-whole-buffer)
(global-set-key (kbd "M-j m") 'indent-region-or-buffer)
(global-set-key (kbd "M-j h") 'hippie-expand)
(global-set-key (kbd "M-j o") 'occur-dwim)
(global-set-key (kbd "M-j i") 'counsel-imenu)
(global-set-key (kbd "M-j q") 'er/expand-region)
(global-set-key (kbd "M-j c") 'aya-create)
(global-set-key (kbd "M-j e") 'aya-expand)


(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-c p") 'counsel-git)


(global-set-key (kbd "C-;") 'ace-jump-mode)
(global-set-key (kbd "C-=") 'mc/mark-next-like-this)

(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))


(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)

(js2r-add-keybindings-with-prefix "C-c j")

(global-set-key (kbd "C-c r") 'org-capture)

;;replace
(defalias 'rs 'replace-string)


;;bookmark
(defalias 'bos 'bookmark-set)

;;mode
(defalias 'om 'org-mode)
(defalias 'jm 'js2-mode)
(defalias 'jmm 'js2-minor-mode)
(defalias 'cm 'cua-mode)


(defalias 'light 'color-theme-gtk-ide)
(defalias 'dark 'color-theme-gruber-darker)

(provide 'init-keybindings)
