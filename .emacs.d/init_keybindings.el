;(global-set-key (kbd "C-r") 'replace-string)
;(global-set-key (kbd "C-i") 'previous-buffer)
;(global-set-key (kbd "C-o") 'next-buffer)
(global-set-key (kbd "M-c") 'comment-region)
(global-set-key (kbd "M-u") 'uncomment-region)

;; Add copy and paste out of emacs
(defun pbcopy ()
  (interactive)
  (call-process-region (point) (mark) "pbcopy")
  (setq deactivate-mark t))

(defun pbpaste ()
  (interactive)
  (call-process-region (point) (if mark-active (mark) (point)) "pbpaste" t t))

(defun pbcut ()
  (interactive)
  (pbcopy)
  (delete-region (region-beginning) (region-end)))

(global-set-key (kbd "C-c c") 'pbcopy)
(global-set-key (kbd "C-c v") 'pbpaste)
(global-set-key (kbd "C-c x") 'pbcut)

(global-set-key (kbd "C-c C-r") 'python-shell-send-region)

(global-set-key (kbd "C-t") 'transpose-chars)


;; Shell
(global-set-key (kbd "C-x C-p") 'shell)

(global-set-key (kbd "C-x C-r") 'replace-string)

