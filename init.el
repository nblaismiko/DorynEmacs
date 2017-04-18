;;Record startup timestamp
(defvar invokation-time
  (current-time))

;;Load configuration files
;;Load package.el
(require 'package)
(setq package-enable-at-startup nil)
;;Add melpa to list of repositories
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") 
             t)
;;Initialize package.el
(package-initialize)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))




;; Input my org init file here
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(load-file "~/.emacs.d/super-emacs/packages.el")
(load-file "~/.emacs.d/super-emacs/interface.el")
(load-file "~/.emacs.d/super-emacs/misc.el")
(load-file "~/.emacs.d/super-emacs/key-bindings.el")
(load-file "~/.emacs.d/super-emacs/c-configurations.el")
(load-file "~/.emacs.d/super-emacs/latex-configurations.el")

;;Print welcome message
(princ (cl-concatenate 'string
                       "Startup completed in "
                       (number-to-string (cadr (time-subtract (current-time)
                                                              invokation-time)))
                       " seconds\n\n"
                       "Welcome to emacs!\n\n"
                       "Today's date: "
                       (format-time-string "%B %d %Y"))
       (get-buffer-create (current-buffer)))
