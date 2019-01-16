;; frame title format
(setq frame-title-format '("" "%b (emacs)"))

;; text filling set to 80 chars
(set-fill-column 80)

;; set your desired tab width
(setq-default indent-tabs-mode nil)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; highlight matching parens
(show-paren-mode t)

;; highlight current line
(add-hook 'after-change-major-mode-hook 'hl-line-mode)

;; enable spellchecker in some contexts
(add-hook 'prog-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook  'flyspell-mode)
(add-hook 'text-mode-hook 'flyspell-mode)

(setq flyspell-issue-message-flag nil)

;; enable interactive do
(ido-mode t)

;; disable auto-save capabilities
(setq make-backup-files nil)
(setq auto-save-default nil)

;; enable flex matching in ido-mode
(add-hook 'ido-setup-hook (lambda ()
                            (setq ido-enable-flex-matching t)))

;; move to a neighbor window using SHIFT-<arrow-key>
(windmove-default-keybindings)

;; enlarge and shrink windows
(global-set-key (kbd "C-c <up>")    'shrink-window)
(global-set-key (kbd "C-c <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c <down>")  'enlarge-window)
(global-set-key (kbd "C-c <left>")  'shrink-window-horizontally)

;; sane split window shortcuts
(global-set-key (kbd "C-x _") 'split-window-below)
(global-set-key (kbd "C-x |") 'split-window-right)
