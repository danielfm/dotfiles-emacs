;; move to a neighbor window using SHIFT-<arrow-key>
(windmove-default-keybindings)

;; enlarge and shrink windows
(global-set-key (kbd "M-S-<up>")    'shrink-window)
(global-set-key (kbd "M-S-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-S-<down>")  'enlarge-window)
(global-set-key (kbd "M-S-<left>")  'shrink-window-horizontally)

;; TODO: Update code to support other unix variants as well

;; Loads the shell environment variables when launching Emacs outside shell
(when window-system
  (when (eql system-type 'darwin)
    (load-unix-shell-env)))
