;;; switch-window-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "switch-window" "switch-window.el" (22769 11520
;;;;;;  853395 802000))
;;; Generated autoloads from switch-window.el

(autoload 'switch-window-then-delete "switch-window" "\
Display an overlay in each window showing a unique key, then
ask user which window to delete

\(fn)" t nil)

(autoload 'switch-window-then-maximize "switch-window" "\
Display an overlay in each window showing a unique key, then
ask user which window to maximize

\(fn)" t nil)

(autoload 'switch-window "switch-window" "\
Display an overlay in each window showing a unique key, then
ask user for the window where move to

\(fn)" t nil)

(autoload 'switch-window-then-split-horizontally "switch-window" "\
Select a window then split it horizontally.

\(fn ARG)" t nil)

(autoload 'switch-window-then-split-vertically "switch-window" "\
Select a window then split it vertically.

\(fn ARG)" t nil)

(autoload 'switch-window-then-split-below "switch-window" "\
Select a window then split it with split-window-below's mode.

\(fn ARG)" t nil)

(autoload 'switch-window-then-split-right "switch-window" "\
Select a window then split it with split-window-right's mode.

\(fn ARG)" t nil)

(autoload 'switch-window-then-swap-buffer "switch-window" "\
Select a window then swap it buffer with current window's buffer.

\(fn ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; switch-window-autoloads.el ends here
