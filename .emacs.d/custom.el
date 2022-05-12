(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-command-list
   '(("TeX" "%(PDF)%(tex) %(file-line-error) %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
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
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command")))
 '(auth-source-save-behavior nil)
 '(cfw:display-calendar-holidays nil)
 '(custom-safe-themes
   '("ad24ea739f229477ea348af968634cb7a0748c9015110a777c8effeddfa920f5" "e7ec0cc3ce134cc0bd420b98573bbd339a908ac24162b8034c98e1ba5ee1f9f6" default))
 '(package-selected-packages
   '(yafolding highlight-indentation yaml-mode calfw calfw-org auto-complete helm-bibtex diminish esup pdf-tools w3m forecast powerline twittering-mode magit emojify mu4e-alert xterm-color cl-lib fill-column-indicator elpy))
 '(send-mail-function 'mailclient-send-it)
 '(show-trailing-whitespace t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "light grey" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" : family "default"))))
 '(cfw:face-default-content ((t (:foreground "grey80"))))
 '(cfw:face-header ((t (:foreground "grey80" :weight bold))))
 '(cfw:face-saturday ((t nil)))
 '(cfw:face-sunday ((t (:foreground "grey80" :weight bold))))
 '(cfw:face-title ((t (:inherit variable-pitch :foreground "grey80" :weight bold :height 2.0))))
 '(cfw:face-toolbar ((t (:background "black" :foreground "black"))))
 '(cfw:face-toolbar-button-off ((t (:foreground "Gray80" :weight bold))))
 '(dired-flagged ((t (:inherit default))))
 '(dired-marked ((t (:inherit default) fault)))
 '(font-latex-script-char-face ((t (:foreground "Red"))))
 '(font-latex-sectioning-0-face ((t (:inherit font-latex-sectioning-1-face))))
 '(font-latex-sectioning-1-face ((t (:inherit font-latex-sectioning-2-face))))
 '(font-latex-sectioning-2-face ((t (:inherit font-latex-sectioning-3-face))))
 '(font-latex-sectioning-3-face ((t (:inherit font-latex-sectioning-4-face))))
 '(font-latex-sectioning-4-face ((t (:inherit font-latex-sectioning-5-face))))
 '(fringe ((t (:background "black"))))
 '(minibuffer-prompt ((t (:foreground "cyan"))))
 '(mode-line ((t (:background "grey80" :foreground "black" :box (:line-width 1 :color "grey80" :style released-button)))))
 '(mode-line-inactive ((t (:inherit mode-line :background "black" :foreground "grey80" :weight light))))
 '(org-headline-done ((t (:foreground "light sky blue"))))
 '(preview-face ((t nil)))
 '(tool-bar ((t (:background "grey75" :foreground "black" :box (:line-width 1 :color "gray3" :style released-button)))))
 '(trailing-whitespace ((t (:background "gray15"))))
 '(window-divider ((t (:foreground "black"))))
 '(window-divider-first-pixel ((t (:foreground "black"))))
 '(window-divider-last-pixel ((t (:foreground "black")))))
