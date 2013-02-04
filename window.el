;; move to a neighbor window using SHIFT-<arrow-key>
(windmove-default-keybindings)

;; enlarge and shrink windows
(global-set-key (kbd "M-S-<up>")    'shrink-window)
(global-set-key (kbd "M-S-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-S-<down>")  'enlarge-window)
(global-set-key (kbd "M-S-<left>")  'shrink-window-horizontally)
