(setq gc-cons-threshold 10000000)
(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(setq package-enable-at-startup nil)
(setq byte-compile-warnings '(cl-functions))
(setq auto-save-default nil)

(setq user-full-name "Talon Chandler")
(setq user-mail-address "talonchandler@gmail.com")
(setq calendar-latitude 37.4)
(setq calendar-longitude -122.3)
(setq calendar-location-name "San Francisco, CA")

;; Set paths
;; (require 'mu4e)
;; (setq mu4e-maildir "~/Mail")
;; (setq mu4e-sent-folder "/[Gmail].Sent Mail")

;; ;; Don't save messages to Sent Messages, Gmail/IMAP takes care of this
;; ;;(setq mu4e-sent-messages-behavior 'delete)

;; ;; Updating with crontab but just in case
;; (setq mu4e-get-mail-command "true")

;; ;; Auto-retrieve
;; (setq mu4e-update-interval 30)

;; (setq mu4e-index-cleanup nil)
;; (setq mu4e-index-lazy-check t)
;; (setq mu4e-hide-index-messages t)

;; ;; Patch for changing UIDs
;; (setq mu4e-change-filenames-when-moving t)

;; ;; Shortcuts
;; (setq mu4e-maildir-shortcuts
;;     '( ("/INBOX"               . ?i)
;;        ("/[Gmail].Sent Mail"   . ?s)
;;        ("/[Gmail].Trash"       . ?t)
;;        ("/[Gmail].All Mail"    . ?a)))

;; ;; Refile to
;; (setq mu4e-refile-folder "/[Gmail].All Mail")
;; (setq mu4e-headers-results-limit '100)

;; ;; View html
;; (setq mu4e-html2text-command "w3m -T text/html")
;; ;;(setq mu4e-html2text-command 'mu4e-shr2text)

;; (require 'smtpmail)
;; (setq message-send-mail-function 'smtpmail-send-it
;;    starttls-use-gnutls t
;;    smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;;    smtpmail-auth-credentials
;;      '(("smtp.gmail.com" 587 "talonchandler@gmail.com" nil))
;;    smtpmail-default-smtp-server "smtp.gmail.com"
;;    smtpmail-smtp-server "smtp.gmail.com"
;;    smtpmail-smtp-service 587)

;; (mu4e-alert-enable-notifications)
;; (mu4e-alert-disable-notifications)
;; (load-file "~/.emacs.d/vip.el")
;; (add-hook 'after-init-hook #'mu4e-alert-enable-mode-line-display)
;; (setq mu4e-alert-email-notification-types '(count))

;; (defun my-mu4e-alert-mode-line-formatter (mail-count)
;;   (when (not (zerop mail-count))
;;     (concat " "
;;             (if (zerop mail-count)
;;                 " "
;;               (format "[%d UNREAD]" mail-count)))))

;; (setq mu4e-alert-modeline-formatter 'my-mu4e-alert-mode-line-formatter)

;; ;;(mu4e-alert-set-default-style 'growl)
;; ;;(add-hook 'after-init-hook #'mu4e-alert-enable-notifications)
;; ;;(alert-add-rule :category "mu4e-alert" :style 'fringe :predicate (lambda (_) (string-match-p "^mu4e-" (symbol-name major-mode))) :continue t)
;; (mu4e-alert-enable-notifications)

;; Signature
;; (setq
;;    user-mail-address "talonchandler@gmail.com"
;;    user-full-name  "Talon Chandler"
;;    mu4e-compose-signature
;;     (concat
;;       "Talon Chandler\n"
;;       "(312) 978-1901"))

;; ;; Which email addresses are mine
;; (setq mu4e-user-mail-address-list
;; '("talonchandler@gmail.com"
;;   "talonchandler@talonchandler.com"
;;   "talonchandler@uchicago.edu"))

;; ;; Choose headers
;; (setq mu4e-headers-fields
;; '((:human-date . 10)
;;  (:flags . 4)
;;  (:from-or-to . 24)
;;  (:subject . 34)
;;  (:mailing-list . 10)))

;; ;; Execute all marks without confirmation.
;; (defun my-mu4e-mark-execute-all-no-confirm ()
;;    (interactive)
;;    (mu4e-mark-execute-all 'no-confirm))
;; (define-key mu4e-headers-mode-map "x" #'my-mu4e-mark-execute-all-no-confirm)

;; ;; Display
;; (setq shr-color-visible-luminance-min 100)

;; ;; Turn on spell check and fill column
;; (add-hook 'mu4e-compose-mode-hook
;;   (defun my-do-compose-stuff ()
;;     (set-fill-column 72)
;;     (flyspell-mode)))

;; ;; Ask to quit
;; (setq mu4e-confirm-quit t)

;; ;; Turn off threads by default
;; (setq mu4e-headers-show-threads nil)

;; ;; Set number of visible header lines
;; (setq mu4e-headers-visible-lines 14)

;; ;; Truncate lines by default
;; (setq truncate-lines t)

;; (global-set-key (kbd "C-c m") 'mu4e)
;; (global-set-key (kbd "C-c p") (lambda () (interactive) (switch-to-buffer "projects.org")))
;; (global-set-key (kbd "C-c r") (lambda () (interactive) (switch-to-buffer "reference.org")))

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs t)

(setq bibtex-maintain-sorted-entries 't)
(setq bibtex-align-at-equal-sign 't)
(setq bibtex-autokey-year-length 4)
(setq bibtex-autokey-titlewords 0)
(setq bibtex-autokey-titleword-length 0)
(setq bibtex-completion-pdf-extension ".pdf")
(setq bibtex-completion-find-additional-pdfs nil)

;; Cleaning from Nick Higham
(setq bibtex-entry-format
      '(page-dashes required-fields numerical-fields whitespace
                    last-comma delimiters unify-case sort-fields realign strings braces))

(setq bibtex-field-delimiters 'double-quotes)
(setq bibtex-entry-delimiters 'braces)
(setq bibtex-field-braces-alist '((("title" "journal") "DNA")
                                  (("title") "2D")
                                  (("title") "3D")
                                  (("title") "OTF")))

;; I prefer closing brace on its own line after cleaning BibTeX entry.
(setq bibtex-clean-entry-hook 'mybibtex-clean-extra)
(defun mybibtex-clean-extra ()
  (progn (bibtex-end-of-entry) (newline) (newline)))
;; (bibtex-beginning-of-entry) (bibtex-next-field) ;; not working
;;(newline) (delete-backward-character) ;; not working

(setq bibtex-completion-additional-search-fields '(keywords))

;; Faster navigation
;; http://kitchingroup.cheme.cmu.edu/blog/2014/10/13/Navigating-your-bibtex-file/
(defun bibtex-next-entry (&optional n)
  "Jump to the beginning of the next bibtex entry. N is a prefix
 argument. If it is numeric, jump that many entries
 forward. Negative numbers do nothing."
  (interactive "P")
  ;; Note if we start at the beginning of an entry, nothing
  ;; happens. We need to move forward a char, and call again.
  (when (= (point) (save-excursion
                     (bibtex-beginning-of-entry)))
    (forward-char)
    (bibtex-next-entry))

  ;; search forward for an entry 
  (when 
      (re-search-forward bibtex-entry-head nil t (and (numberp n) n))
    ;; go to beginning of the entry
    (bibtex-beginning-of-entry)))

(defun bibtex-previous-entry (&optional n)
  "Jump to beginning of the previous bibtex entry. N is a prefix
 argument. If it is numeric, jump that many entries back."
  (interactive "P")
  (bibtex-beginning-of-entry)
  (when 
      (re-search-backward bibtex-entry-head nil t (and (numberp n) n))
    (bibtex-beginning-of-entry)))

(defun jmax-bibtex-mode-keys ()
  "Modify keymaps used by `bibtex-mode'."
  (local-set-key (kbd "M-n") 'bibtex-next-entry)
  (local-set-key (kbd "M-p") 'bibtex-previous-entry))

;; add to bibtex-mode-hook
(add-hook 'bibtex-mode-hook 'jmax-bibtex-mode-keys)

;; Open shortcut
(global-set-key (kbd "C-x p") 'helm-bibtex)

;; Locations
(setq helm-bibtex-full-frame nil)
(setq bibtex-completion-bibliography '("~/Dropbox/org/talon.bib"))
(setq bibtex-completion-library-path "~/Dropbox/org/papers/")
;;(setq bibtex-completion-notes-path "~/Dropbox/org/papers/notes.org")

;; Display setting
(setq bibtex-completion-display-formats '((t . "${author:24} ${title:*} ${year:4} ${=type=:7} ${=has-pdf=:1}${=has-note=:1}")))
(setq bibtex-completion-pdf-symbol "P")
(setq bibtex-completion-notes-symbol "N")

;; Open in preview
(setq bibtex-completion-pdf-open-function
  (lambda (fpath)
    (call-process "open" nil 0 nil "-a" "/System/Applications/Preview.app" fpath)))

;; Reverse Sorting
(advice-add 'bibtex-completion-candidates
            :filter-return 'reverse)

;; Better formatting for bib insert reference
(defun bibtex-completion-insert-reference (keys)
  "Insert a reference for each selected entry."
  (let* ((refs (--map
                (s-word-wrap fill-column
                             (concat "\n" (bibtex-completion-apa-format-reference it)))
                keys)))
    (insert "\n" (s-join "\n" refs) "\n")))

(setq org-directory "~/Dropbox/org/")
(setq org-agenda-files '("reference.org" "projects.org" "calendar/"))
(setq org-hide-block-startup nil)

(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)" "|" "CANCELED(c)" "DONE(d)")))

(setq org-todo-keyword-faces
      '(("TODO" . "pink")
        ("STARTED" . "yellow")
        ("WAITING" . "orange")
        ("CANCELED" . "red")
        ("DONE" . "green")))

(setq org-tag-alist '((:startgroup . nil)
                      ("@work" . ?w) ("@home" . ?h) ("errand" . ?e)
                      (:endgroup .nil)))
(setq org-tags-column -85)

(setq org-log-done 'time)

(setq org-default-notes-file "capture.org")
(setq org-agenda-files (quote ("reference.org" "projects.org" "calendar/")))
(setq org-archive-location "archive/datetree.org::datetree/* Finished Tasks")
(setq org-enforce-todo-dependencies t)
(setq org-agenda-include-diary t) ;; Read sexp diary entries
(setq org-agenda-window-setup "current-window")
(setq org-deadline-warning-days 7)

(global-set-key (kbd "C-c a") 'org-agenda-list)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)

(global-set-key (kbd "C-c s") (lambda () (interactive) (org-content 2)))

;; Save window views
(setq org-agenda-restore-windows-after-quit t)

;; Org quick done and archive
(defun org-toggle-todo-and-fold ()
  (interactive)
  (save-excursion
    (org-back-to-heading t) ;; Make sure command works even if point is
    ;; below target heading
    (cond ((looking-at "\*+ TODO")
           (org-todo "DONE")
           (hide-subtree))
          ((looking-at "\*+ DONE")
           (org-todo "TODO")
           (hide-subtree))
          (t (message "Can only toggle between TODO and DONE.")))))

(global-set-key (kbd "C-x C-d") 'org-toggle-todo-and-fold)

;; Org export
(setq org-export-dispatch-use-expert-ui 't)

;; Org indent mode
(setq org-startup-indented t)

;;(require 'org-mu4e)

;; Start everything folded
;;(setq org-hide-block-startup 't)
(setq org-startup-folded 't)

;;
(require 'calfw)
(require 'calfw-org)

(defun my-open-calendar ()
  (interactive)
  (cfw:open-calendar-buffer
   :view 'two-weeks
   :contents-sources
   (list
    (cfw:org-create-source "LightSkyBlue")  ; orgmode source
    )))
(global-set-key (kbd "C-x a") 'my-open-calendar)

(setq cfw:render-line-breaker 'cfw:render-line-breaker-wordwrap)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; Diplay magit status in current window
(setq magit-display-buffer-function
      (lambda (buffer)
        (display-buffer
         buffer (if (and (derived-mode-p 'magit-mode)
                         (memq (with-current-buffer buffer major-mode)
                               '(magit-process-mode
                                 magit-revision-mode
                                 magit-diff-mode
                                 magit-stash-mode
                                 magit-status-mode)))
                    nil
                  '(display-buffer-same-window)))))

;;(elpy-enable)
;;(elpy-use-ipython)

(setq python-shell-interpreter "python3")
(setq python-shell-interpreter "/usr/local/bin/python3")

(global-set-key (kbd "C-c C-r") 'python-shell-send-region)
(global-set-key (kbd "C-t") 'transpose-chars)

(autoload 'octave-mode "octave-mod" "Loading octave-mode" t)
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

(add-hook 'octave-mode-hook
          (lambda ()
            (setq tab-width 4)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                                (font-lock-mode 1))))

(add-to-list 'load-path "/usr/local/texlive/2017/texmf-dist/asymptote")
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

;; Shell load .bash_profile
;;(setenv "PATH" (shell-command-to-string "source ~/.bashrc; echo -n $PATH"))
(global-set-key (kbd "C-x C-p") 'shell)
(global-set-key (kbd "C-x C-r") 'replace-string)

;; Open in current window
(add-to-list 'display-buffer-alist
     '("^\\*shell\\*$" . (display-buffer-same-window)))

(setq doc-view-resolution 300)

;;; Install epdfinfo via 'brew install pdf-tools' and then install the
;;; pdf-tools elisp via the use-package below. To upgrade the epdfinfo
;;; server, just do 'brew upgrade pdf-tools' prior to upgrading to newest
;;; pdf-tools package using Emacs package system. If things get messed
;;; up, just do 'brew uninstall pdf-tools', wipe out the elpa
;;; pdf-tools package and reinstall both as at the start.
;(use-package pdf-tools
;  :ensure t
;  :config
;  (custom-set-variables
;    '(pdf-tools-handle-upgrades nil)) ; Use brew upgrade pdf-tools instead.
;  (setq pdf-info-epdfinfo-program "/usr/local/bin/epdfinfo"))
;(pdf-tools-install)

(require 'fill-column-indicator)
(setq fci-rule-color "white")
(setq-default fill-column 80)
(setq fci-rule-column 80)
(setq fci-rule-use-dashes nil)

(setq TeX-PDF-mode t)
(setq TeX-save-query nil) ;;autosave before compiling

;; Scale preview size
(set-default 'preview-scale-function 1.0)

;; Disable annoying fontification in latex
(setq font-latex-fontify-script nil)

;; Don't ask to cache preamble
(setq preview-auto-cache-preamble t)

;; Enable math mode (type ` then letter for character)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'python-mode-hook 'fci-mode)
(add-hook 'python-mode-hook 'linum-mode)
(add-hook 'python-mode-hook 'abbrev-mode)

;;(add-hook 'LaTeX-mode-hook 'fci-mode)
;;(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'text-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(add-hook 'lisp-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook (lambda () (diminish 'org-indent-mode "")))
(add-hook 'org-mode-hook 'org-beamer-mode)
(add-hook 'org-mode-hook (lambda () (diminish 'org-beamer-mode "")))

(add-hook 'math-mode 'linum-mode)

(add-hook 'yaml-mode-hook 'yafolding-mode)

;; Use ido
(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess)
(setq ido-file-extensions-order '(".tex" ".org" ".txt" ".py"))
(setq ido-ignore-files '("\.ldf" "\.fdb_latexmk"))
(setq ido-max-window-height 1)

(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(yas-global-mode 1)

;; Use autocomplete
;;(global-auto-complete-mode t)

;; Read html
(setq mm-text-html-renderer 'w3m)
(setq org-return-follows-link 't)

;; Forecast mode
(setq forecast-api-key "121b71783a9f4be5f28dde08f968a1c1")
(setq forecast-units "us")

;; GPG workaround: https://colinxy.github.io/software-installation/2016/09/24/emacs25-easypg-issue.html
(setq epa-pinentry-mode 'loopback)

;;
(show-paren-mode)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;; Skip splash screen
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; Hide menu bars
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Display settings
(setq mac-allow-anti-aliasing t)

;; Window sizes
(add-to-list 'initial-frame-alist '(width . 180))
(add-to-list 'initial-frame-alist '(height . 48))
(add-to-list 'default-frame-alist '(width . 89))
(add-to-list 'default-frame-alist '(height . 48))

(load-file "~/.emacs.d/xterm-color/xterm-color.el")
(require 'xterm-color)
(progn (add-hook 'comint-preoutput-filter-functions 'xterm-color-filter)
       (setq comint-output-filter-functions (remove 'ansi-color-process-output comint-output-filter-functions)))

(add-to-list 'default-frame-alist '(font . "Monaco 12"))
(if (string-equal system-type "darwin")
    (set-fontset-font "fontset-default"
                      'unicode
                      '("Monaco" . "iso10646-1")))

(setq frame-resize-pixelwise 'true)
(setq line-spacing 0)

(setq-default show-trailing-whitespace t)

(dolist (hook '(special-mode-hook
                term-mode-hook
                comint-mode-hook
                compilation-mode-hook
                minibuffer-setup-hook
                shell-mode-hook
                calendar-mode-hook
                org-agenda-mode-hook
                buffer-menu-mode-hook
                helm-mode-hook))
                (add-hook hook
                          (lambda () (setq show-trailing-whitespace nil))))

(add-to-list 'display-buffer-alist
             '("*Help*" display-buffer-same-window))

(delete-selection-mode t) ;; Deletes selection when you start typing
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq ring-bell-function 'ignore)

(setq echo-keystrokes 0.1)

(setq visible-bell t)

(setq linum-format "%d ")

(unless window-system
  (require 'mouse)
  (xterm-mouse-mode 1)
  (global-set-key [mouse-1] '(mouse-set-point))
  (global-set-key [mouse-4] '(lambda ()
                               (interactive)
                               (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
                               (interactive)
                               (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
)

(blink-cursor-mode 0)
(setq-default cursor-in-non-selected-windows nil)

(defun transpose-windows (arg)
   "Transpose the buffers shown in two windows."
   (interactive "p")
   (let ((selector (if (>= arg 0) 'next-window 'previous-window)))
     (while (/= arg 0)
       (let ((this-win (window-buffer))
             (next-win (window-buffer (funcall selector))))
         (set-window-buffer (selected-window) next-win)
         (set-window-buffer (funcall selector) this-win)
         (select-window (funcall selector)))
       (setq arg (if (plusp arg) (1- arg) (1+ arg))))))
 (global-set-key (kbd "C-x 7") 'transpose-windows)

(global-set-key (kbd "C-x 4") (lambda () (interactive) (enlarge-window 8)))

(global-set-key (kbd "C-x l") 'previous-buffer)
(global-set-key (kbd "C-x ;") 'next-buffer)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

(setq skippable-buffers '("*Messages*" "*scratch*" "*Help*" "*Completions*" "Calendar" "*info*"))

(defun my-next-buffer ()
  "next-buffer that skips certain buffers"
  (interactive)
  (next-buffer)
  (while (member (buffer-name) skippable-buffers)
    (next-buffer)))

(defun my-previous-buffer ()
  "previous-buffer that skips certain buffers"
  (interactive)
  (previous-buffer)
  (while (member (buffer-name) skippable-buffers)
    (previous-buffer)))

(global-set-key [remap next-buffer] 'my-next-buffer)
(global-set-key [remap previous-buffer] 'my-previous-buffer)

(defun new-window-below-and-switch ()
  (interactive)
  (split-window-below)
  (other-window 1))

(defun new-window-right-and-switch ()
  (interactive)
  (split-window-right)
  (other-window 1))

(global-set-key (kbd "C-x 2") 'new-window-below-and-switch)
(global-set-key (kbd "C-x 3") 'new-window-right-and-switch)

(defun window-toggle-split-direction ()
  "Switch window split from horizontally to vertically, or vice versa.

i.e. change right window to bottom, or change bottom window to right."
   (interactive)
   (require 'windmove)
   (let ((done))
     (dolist (dirs '((right . down) (down . right)))
       (unless done
         (let* ((win (selected-window))
                (nextdir (car dirs))
                (neighbour-dir (cdr dirs))
                (next-win (windmove-find-other-window nextdir win))
                (neighbour1 (windmove-find-other-window neighbour-dir win))
                (neighbour2 (if next-win (with-selected-window next-win
                                           (windmove-find-other-window neighbour-dir next-win)))))
           ;;(message "win: %s\nnext-win: %s\nneighbour1: %s\nneighbour2:%s" win next-win neighbour1 neighbour2)
           (setq done (and (eq neighbour1 neighbour2)
                           (not (eq (minibuffer-window) next-win))))
           (if done
               (let* ((other-buf (window-buffer next-win)))
                 (delete-window next-win)
                 (if (eq nextdir 'right)
                     (split-window-vertically)
                   (split-window-horizontally))
                 (set-window-buffer (windmove-find-other-window neighbour-dir) other-buf))))))))

 (global-set-key (kbd "C-x 8") 'window-toggle-split-direction)

(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

(global-set-key (kbd "M-c") 'comment-region)
(global-set-key (kbd "M-u") 'uncomment-region)

(require 'cl-lib)
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (cl-letf (((symbol-function #'process-list) (lambda ())))
    ad-do-it))

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

(global-set-key (kbd "C-c C-c") 'pbcopy)
(global-set-key (kbd "C-c C-v") 'pbpaste)
(global-set-key (kbd "C-c C-x") 'pbcut)

(global-set-key (kbd "C-c C-f") 'toggle-frame-fullscreen)

;; Opposite of fill-paragraph. https://www.emacswiki.org/emacs/UnfillParagraph
(defun unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text."
      (interactive (progn (barf-if-buffer-read-only) '(t)))
      (let ((fill-column (point-max))
            ;; This would override `fill-column' if it's an integer.
            (emacs-lisp-docstring-fill-column t))
        (fill-paragraph nil region)))
    ;; Handy key definition
    (define-key global-map "\M-Q" 'unfill-paragraph)

(setq sentence-end-double-space nil)

;; Place custom commands in another file (typically appearance only)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; Initial window layout
(shell "*shell1*")
(find-file "~/.emacs.d/talon.org")
(find-file "~/Dropbox/org/reference.org")
(find-file "~/Dropbox/org/projects.org")
(switch-to-buffer "projects.org")
(other-window 1)
(switch-to-buffer "*shell1*")

(window-toggle-split-direction)
(buf-move-right)

;; Full size frames
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . maximized))
