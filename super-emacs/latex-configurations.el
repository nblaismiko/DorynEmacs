
;; Make latexmk the compile command for latex
(add-hook 'LaTeX-mode-hook (lambda ()
                             (push
                              '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
                                :help "Run latexmk on file")
                              TeX-command-list)))
;; Make latexmk the default command when hitting C-c
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk"))) 
;; Make LaTeX mode ask for master file before compile.
(setq-default TeX-master nil)
;; Make LaTeX-mode the default mode when opening .tex files.
(add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))

;; Code snippet I copied to have pdf viewer Okular integrated to emacs.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-source-correlate-method (quote synctex))
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-list (quote (("Okular" "okular --unique %o#src:%n%b"))))
 '(TeX-view-program-selection (quote ((engine-omega "dvips and gv") (output-dvi "xdvi") (output-pdf "Okular") (output-html "xdg-open"))))
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

