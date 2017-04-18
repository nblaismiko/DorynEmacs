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
