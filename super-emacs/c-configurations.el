

(require 'compile)
(add-hook 'c-mode-hook (lambda () (set (make-local-variable 'compile-command) (format "make -C %s" (file-name-directory (get-closest-pathname)) ))))

