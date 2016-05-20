
(defun open-eshell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  (split-window-vertically)
  (eshell))


(defun select-current-line ()
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position)))

(defun init()
  "open my init file"
  (interactive)
  (let (my-file-number my-file)
    (setq my-file-number (read-from-minibuffer "Enter file number: "))
    (setq my-file '("~/.emacs.d/init.el"	
		    "~/.emacs.d/lisp/"
		    ))
    (find-file (nth (string-to-number my-file-number) my-file))))
(defun now()
  "Insert the date in current position"
  (interactive)
  (insert (format-time-string "[%F,%a,%H:%M]")))


(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indent selected region."))
      (progn
        (indent-buffer)
        (message "Indent buffer.")))))
(defun occur-dwim ()
  "Call `occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur))

(provide 'init-func)
