(set-fontset-font "fontset-default"
   'gb18030 '("Microsoft YaHei". "unicode-bmp"))

(set-default-font "-outline-Consolas-normal-normal-normal-mono-16-*-*-*-c-*-iso8859-1")


(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

(delete-selection-mode 1)

;;高亮当前行
;(global-hl-line-mode 1)

;;关闭烦人的出错时的提示声
(setq visible-bell t)

;;关闭emacs启动时的画面
(setq inhibit-startup-message t)

;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)

;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。
(fset 'yes-or-no-p 'y-or-n-p)

(global-linum-mode t)

;;设置粘贴缓冲条目数量.
(setq kill-ring-max 200)

(setq default-fill-column 80)

;;防止页面滚动时跳动
(setq scroll-margin 3 scroll-conservatively 10000)

;;打开括号匹配显示模式
(show-paren-mode t)

;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。
(setq show-paren-style 'parenthesis)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(mouse-avoidance-mode 'animate)

;;让 Emacs 可以直接打开和显示图片。
(setq auto-image-file-mode t)

;; 在行首 C-k 时，同时删除该行。
(setq-default kill-whole-line t)

;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码
(add-hook 'comint-output-filter-functions
      'comint-watch-for-password-prompt)

;; 不生成临时文件
(setq-default make-backup-files nil)

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;;Non-nil if Transient-Mark mode is enabled.
(setq-default transient-mark-mode t)

;; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq track-eol t)

;; 设置时间戳，标识出最后一次保存文件的时间。
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S ml")


;;hideshow
(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'js-mode-hook 'hs-minor-mode)
(add-hook 'python-mode 'hs-minor-mode)


(setq hippie-expand-try-function-list '(try-expand-debbrev
                                        try-expand-debbrev-all-buffers
                                        try-expand-debbrev-from-kill
                                        try-complete-file-name-partially
                                        try-complete-file-name
                                        try-expand-all-abbrevs
                                        try-expand-list
                                        try-expand-line
                                        try-complete-lisp-symbol-partially
                                        try-complete-lisp-symbol))

(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(put 'dired-find-alternate-file 'disabled nil)

(require 'dired-x)

(setq dired-dwim-target t)


(provide 'init-better-defaults)
