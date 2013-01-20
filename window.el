;; move to a neighbor window
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

;; enlarge and shrink windows
(global-set-key (kbd "S-<up>")    'shrink-window)
(global-set-key (kbd "<select>")  'shrink-window) ;; for terminal-based Emacs
(global-set-key (kbd "S-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-<down>")  'enlarge-window)
(global-set-key (kbd "S-<left>")  'shrink-window-horizontally)
