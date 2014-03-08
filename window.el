;; move to a neighbor window using SHIFT-<arrow-key>
(windmove-default-keybindings)

;; enlarge and shrink windows
(global-set-key (kbd "C-c <up>")    'shrink-window)
(global-set-key (kbd "C-c <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c <down>")  'enlarge-window)
(global-set-key (kbd "C-c <left>")  'shrink-window-horizontally)
