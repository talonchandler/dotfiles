; User details
(setq user-full-name "Talon Chandler")
(setq user-mail-address "talonchandler@talonchandler.com")

;; Turn on packages
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/")
	     '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(package-initialize)


;; Fill column indicator 
(require 'fill-column-indicator)

(setq fci-rule-color "white")
(setq-default fill-column 80)
(setq fci-rule-column 80)
(setq fci-rule-use-dashes nil)

;; Major and minor modes
(add-hook 'python-mode-hook 'fci-mode)
(add-hook 'python-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'fci-mode)
(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'lisp-mode-hook 'linum-mode)

;; Skip splash screen
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; Intuitive text marking
(delete-selection-mode t) ;; Deletes selection when you start typing
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

;; Simplify yes-no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Appearance customize
(custom-set-faces
 '(default ((t (:inherit nil
		:stipple nil
		:background "Black"
		:foreground "light grey"
		:inverse-video nil
		:box nil
		:strike-through nil
		:overline nil
		:underline nil
		:slant normal
		:weight normal
		:height 1
		:width  normal
		:foundry "default" :
		family "default"))))
 '(dired-flagged ((t (:inherit default))))
 '(dired-marked ((t (:inherit default) fault))))



;; Octave
(autoload 'octave-mode "octave-mod" "Loading octave-mode" t)
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

(add-hook 'octave-mode-hook
	  (lambda ()
	    (setq tab-width 4)
	    (abbrev-mode 1)
	    (auto-fill-mode 1)
	    (if (eq window-system 'x)
		                (font-lock-mode 1))))

;; Display settings
(setq mac-allow-anti-aliasing t)

;; Bell off
(setq ring-bell-function 'ignore)

;; Faster response
(setq echo-keystrokes 0.1)

;; Visible bell
(setq visible-bell t)

;; Backup files
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;; Line number on
(setq linum-format "%d ")

;; Mouse on
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

;; Hide menu bars
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Elpy
(elpy-enable)
;;(elpy-use-ipython)

;; Use ido
(require 'ido)
(ido-mode t)

;; Use autocomplete
(global-auto-complete-mode t)

;; Asymptote
(add-to-list 'load-path "/usr/local/texlive/2015/texmf-dist/asymptote")
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

;; Shell load .bash_profile
(setenv "PATH" (shell-command-to-string "source ~/.bash_rc; echo -n $PATH"))

;; org-mode
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)")))
(setq org-log-done 'time)
(setq org-default-notes-file "/Users/Talon/GoogleDrive/capture.org")
(setq org-archive-location "~/GoogleDrive/archive/datetree.org::datetree/* Finished Tasks")
(setq org-enforce-todo-dependencies t)


;; gmail to bb
(add-to-list 'load-path "~/.emacs.d/lisp/")
(autoload 'gmail2bbdb-import-file "gmail2bbdb" nil t nil)

;; Read html
(setq mm-text-html-renderer 'w3m)
(setq org-return-follows-link 't)

;; Set location
(setq calendar-latitude 41.9)
(setq calendar-longitude -87.6)
(setq calendar-location-name "Chicago, IL")

;; Font
(add-to-list 'default-frame-alist '(font . "Monaco 12"))
(if (string-equal system-type "darwin")
    (set-fontset-font "fontset-default"
                      'unicode
                      '("Monaco" . "iso10646-1")))

;; Docview
(setq doc-view-resolution 300)

;; Xterm color
(progn (add-hook 'comint-preoutput-filter-functions 'xterm-color-filter)
       (setq comint-output-filter-functions (remove 'ansi-color-process-output comint-output-filter-functions)))

;; Cursor
(blink-cursor-mode 0)
(setq-default cursor-in-non-selected-windows nil)

;; Initial window layout
(find-file "~/GoogleDrive/projects.org")
(split-window-right)
(other-window 1)
(shell "*shell1*")
(toggle-frame-fullscreen)

