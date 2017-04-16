(defvar super-emacs--my-keyboard-bindings 
  '(("C-}" . mc/mark-next-like-this)
    ("C-{" . mc/mark-previous-like-this)
    ("C-|" . mc/mark-all-like-this)
    ("M-/" . undo-tree-visualize)
    ("C-\," . neotree-toggle)
    ("C-o" . delete-current-line)
    ("C-S-o" . replace-currentline-with-yank)
    ("C-\"" . theme-looper-enable-next-theme)
    ("C-M-'" . myterminal-controls-open-controls)
    ("C-c M-x" . execute-extended-command)
    ("C-S-l" . select-current-line)
    ("M-x" . helm-M-x)
    ("C-x b" . helm-mini)
    ("C-x C-b" . helm-buffers-list)
    ("C-x C-f" . helm-find-files)
    ("C-x C-r" . helm-recentf)
    ("M-y" . helm-show-kill-ring)
    ("C-t" . compile)
    ("<C-tab>" . switch-window)
    ("C-S-<up>" . enlarge-window)
    ("C-S-<down>" . shrink-window)
    ("C-S-<left>" . shrink-window-horizontally)
    ("C-S-<right>" . enlarge-window-horizontally)
    ("<C-return>" . set-rectangular-region-anchor)
    ("C-S-a" . beginning-of-defun)
    ("C-S-e" . end-of-defun)
    ("M-<up>" . move-line-up)
    ("M-<down>" . move-line-down)
    ("M--" . previous-buffer)
    ("<f5>" . revert-buffer-no-confirm)))

(defun super-emacs-apply-keyboard-bindings (pair)
  "Apply keyboard-bindings for supplied list of key-pair values"
  (global-set-key (kbd (car pair))
                  (cdr pair)))

(mapc 'super-emacs-apply-keyboard-bindings
      super-emacs--my-keyboard-bindings)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z


(require 'multiple-cursors)
(global-set-key (kbd "C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)



