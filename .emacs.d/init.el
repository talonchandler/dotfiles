(package-initialize)

;; LaTeX
(getenv "PATH")
(setenv "PATH"
	(concat "/usr/texbin" ":"
(getenv "PATH")))
(setq TeX-PDF-mode t)
(setq TeX-save-query nil) ;;autosave before compiling

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-command-list
   (quote
    (("TeX" "%(PDF)%(tex) %(file-line-error) %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %t; open %s" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "%(PDF)amstex %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (ams-tex-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "texexec --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "texexec %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
     ("View" "open %s.pdf" TeX-run-command t t :help "Run Text viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-command t t :help "Generate PostScript file")
     ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file")
     ("Xindy" "texindy %s" TeX-run-command nil t :help "Run xindy to create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for correctness")
     ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for common mistakes")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(auth-source-save-behavior nil)
 '(custom-safe-themes
   (quote
    ("ad24ea739f229477ea348af968634cb7a0748c9015110a777c8effeddfa920f5" "e7ec0cc3ce134cc0bd420b98573bbd339a908ac24162b8034c98e1ba5ee1f9f6" default)))
 '(org-agenda-files
   (quote
    ("~/GoogleDrive/capture.org" "~/GoogleDrive/someday.org" "~/GoogleDrive/reference.org" "~/GoogleDrive/projects.org")))
 '(package-selected-packages (quote (fill-column-indicator elpy auto-complete)))
 '(send-mail-function (quote mailclient-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "light grey" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" : family "default"))))
 '(dired-flagged ((t (:inherit default))))
 '(dired-marked ((t (:inherit default) fault))))

;; Latex customize
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-command-list
   (quote
    (("TeX" "%(PDF)%(tex) %(file-line-error) %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %t; open %s" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "%(PDF)amstex %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (ams-tex-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "texexec --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "texexec %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
     ("View" "open %s.pdf" TeX-run-command t t :help "Run Text viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-command t t :help "Generate PostScript file")
     ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file")
     ("Xindy" "texindy %s" TeX-run-command nil t :help "Run xindy to create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for correctness")
     ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for common mistakes")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(custom-safe-themes
   (quote
    ("ad24ea739f229477ea348af968634cb7a0748c9015110a777c8effeddfa920f5" "e7ec0cc3ce134cc0bd420b98573bbd339a908ac24162b8034c98e1ba5ee1f9f6" default))))

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

(global-set-key (kbd "C-c C-c") 'pbcopy)
(global-set-key (kbd "C-c C-v") 'pbpaste)
(global-set-key (kbd "C-c C-x") 'pbcut)

(global-set-key (kbd "C-c C-r") 'python-shell-send-region)

(global-set-key (kbd "C-t") 'transpose-chars)


;; Shell
(global-set-key (kbd "C-x C-p") 'shell)
(global-set-key (kbd "C-x C-r") 'replace-string)

;; Org-mode
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; Fullscreen
(global-set-key (kbd "C-c C-f") 'toggle-frame-fullscreen)

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

;; Shell load .bash_profile
(setenv "PATH" (shell-command-to-string "source ~/.bash_rc; echo -n $PATH"))

;; Xterm color
;;(require 'xterm-color)
;;(progn (add-hook 'comint-preoutput-filter-functions 'xterm-color-filter)
;;       (setq comint-output-filter-functions (remove 'ansi-color-process-output comint-output-filter-functions)))

;; Cursor
(blink-cursor-mode 0)
(setq-default cursor-in-non-selected-windows nil)

;; Initial window layout
(shell "*shell1*")
(find-file "~/GoogleDrive/projects.org")
(split-window-below)
(other-window 1)
(org-agenda-list)
(balance-windows)

;;
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
