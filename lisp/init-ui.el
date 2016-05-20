(set-scroll-bar-mode nil)
(tool-bar-mode nil)

(blink-cursor-mode -1)


;;启动设置
(setq default-frame-alist
             '((vertical-scroll-bars)
               (top . 25)
               (left . 45)
               (width . 120)
               (height . 36)
               (tool-bar-lines . 0)
               (menu-bar-lines . 1)
               (right-fringe)
               (left-fringe)))


;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示。
(setq frame-title-format "%b@6ml-emacs")

(provide 'init-ui)
