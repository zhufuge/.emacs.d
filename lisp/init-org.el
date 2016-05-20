(require 'org)

(setq org-agenda-files '("~/.emacs.d/org"))

(setq org-src-fontify-natively t)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.emacs.d/org/gtd.org" "工作安排")
         "* TODO [#B] %?\n  %i\n"
         :empty-lines 1)))



(setq default-major-mode 'org-mode)
(add-hook 'org-mode-hook 'turn-on-auto-fill)

(provide 'init-org)
