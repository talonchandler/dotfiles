; User details
(setq user-full-name "Talon Chandler")
(setq user-mail-address "talonchandler@talonchandler.com")

;; Major and minor modes
(add-hook 'prog-mode-hook 'fci-mode)
(add-hook 'text-mode-hook 'flyspell-mode)

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
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
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
(setq mac-allow-anti-aliasing nil)

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
(global-linum-mode 1)
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

;; Hide menu bar
(menu-bar-mode -1)

;; Turn on packages
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/")
	     '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(package-initialize)

;; Elpy
(elpy-enable)
(elpy-use-ipython)

;; Use ido
(require 'ido)
(ido-mode t)

;; Use autocomplete
(global-auto-complete-mode t)

;; Use fill-column-indicator
(require 'fill-column-indicator)
;;(define-globalized-minor-mode
;;  global-fci-mode fci-mode (lambda () (fci-mode 1)))
;;(global-fci-mode t)

(setq fci-rule-color "white")
(setq-default fill-column 80)
(setq fci-rule-column 80)
(setq fci-rule-use-dashes nil)

;; Asymptote
(add-to-list 'load-path "/usr/local/texlive/2015/texmf-dist/asymptote")
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

;; Shell load .bash_profile
(setenv "PATH" (shell-command-to-string "source ~/.bash_rc; echo -n $PATH"))

;; Initial window layout
(split-window-below -15)
(other-window 1)
(shell "*shell1*")
(other-window 1)
