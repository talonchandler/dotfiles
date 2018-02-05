
(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(setq package-enable-at-startup nil)

(setq user-full-name "Talon Chandler")
(setq user-mail-address "talonchandler@talonchandler.com")
(setq calendar-latitude 41.9)
(setq calendar-longitude -87.6)
(setq calendar-location-name "Chicago, IL")

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs t)

(setq bibtex-maintain-sorted-entries 't)

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

(add-hook 'python-mode-hook 'fci-mode)
(add-hook 'python-mode-hook 'linum-mode)
(add-hook 'python-mode-hook 'abbrev-mode)
;;(add-hook 'LaTeX-mode-hook 'fci-mode)
;;(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(add-hook 'lisp-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook (lambda () (diminish 'org-indent-mode "")))
(add-hook 'org-mode-hook 'org-beamer-mode)
(add-hook 'org-mode-hook (lambda () (diminish 'org-beamer-mode "")))
(add-hook 'math-mode 'linum-mode)

;; Use ido
(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess)
(setq ido-file-extensions-order '(".org" ".txt" ".py"))
(setq ido-max-window-height 1)

;; Use autocomplete

;; Read html
(setq mm-text-html-renderer 'w3m)
(setq org-return-follows-link 't)

;; GPG workaround: https://colinxy.github.io/software-installation/2016/09/24/emacs25-easypg-issue.html
(setq epa-pinentry-mode 'loopback)

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

;;(load-file "~/.emacs.d/xterm-color/xterm-color.el")
;;(require 'xterm-color)
;;(progn (add-hook 'comint-preoutput-filter-functions 'xterm-color-filter)
;;       (setq comint-output-filter-functions (remove 'ansi-color-process-output comint-output-filter-functions)))

(add-to-list 'default-frame-alist '(font . "Monaco 12"))
(if (string-equal system-type "darwin")
    (set-fontset-font "fontset-default"
                      'unicode
                      '("Monaco" . "iso10646-1")))

(setq frame-resize-pixelwise 'true)
(setq line-spacing 0)

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

;;; Opposite of fill-paragraph. https://www.emacswiki.org/emacs/UnfillParagraph
    (defun unfill-paragraph (&optional region)
      "Takes a multi-line paragraph and makes it into a single line of text."
      (interactive (progn (barf-if-buffer-read-only) '(t)))
      (let ((fill-column (point-max))
            ;; This would override `fill-column' if it's an integer.
            (emacs-lisp-docstring-fill-column t))
        (fill-paragraph nil region)))
    ;; Handy key definition
    (define-key global-map "\M-Q" 'unfill-paragraph)

;; Place custom commands in another file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(shell "*shell1*")
