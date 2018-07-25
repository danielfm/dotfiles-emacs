;; move to a neighbor window using SHIFT-<arrow-key>
(windmove-default-keybindings)

;; enlarge and shrink windows
(global-set-key (kbd "C-c <up>")    'shrink-window)
(global-set-key (kbd "C-c <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c <down>")  'enlarge-window)
(global-set-key (kbd "C-c <left>")  'shrink-window-horizontally)

;; quick whitespace-mode shortcut
(global-set-key (kbd "C-x w") 'whitespace-mode)

;; sane split window shortcuts
(global-set-key (kbd "C-x _") 'split-window-below)
(global-set-key (kbd "C-x |") 'split-window-right)

;; multiple cursors
(global-set-key (kbd "C-c m *") 'mc/edit-lines)
(global-set-key (kbd "C-c m >") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c m <") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c m .") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c m i") 'mc/mark-more-like-this-extended)

;; magit status
(global-set-key (kbd "C-x g") 'magit-status)

;; org-mode key bindings
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)
