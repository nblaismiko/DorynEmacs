;; Set all global keybindings here.
(defvar super-emacs--my-keyboard-bindings 
  '(("C-S-c" . 'mc/edit-lines)
    ("C->" . 'mc/mark-next-like-this)
    ("C-<" . 'mc/mark-previous-like-this)
    ("C-c C-<" . 'mc/mark-all-like-this)
    ("C-S-<mouse-1>" . mc/add-cursor-on-click)
    ("<C-return>" . set-rectangular-region-anchor)
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
    ("C-S-a" . beginning-of-defun)
    ("C-S-e" . end-of-defun)
    ("<C-backspace>" . delete-word)
    ("M-d" . delete-word-backwards)
    ("M-<up>" . move-line-up)
    ("M-<down>" . move-line-down)
    ("M--" . previous-buffer)
    ("<f5>" . revert-buffer-no-confirm)))

;; Function to apply specified keybindings
(defun super-emacs-apply-keyboard-bindings (pair)
  "Apply keyboard-bindings for supplied list of key-pair values"
  (global-set-key (kbd (car pair))
                  (cdr pair)))

;; Apply my keybinding
(mapc 'super-emacs-apply-keyboard-bindings
      super-emacs--my-keyboard-bindings)

;; Define helm keybindings
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

