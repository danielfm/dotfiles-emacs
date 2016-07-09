;; set your desired tab width
(setq-default indent-tabs-mode nil)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; highlight matching parens
(show-paren-mode t)

;; highlight current line
(add-hook 'after-change-major-mode-hook 'hl-line-mode)

;; show line numbers in programming modes
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%4d ")

;; spellchecker in comments for programming modes
(add-hook 'prog-mode-hook (lambda () (flyspell-prog-mode)))
(setq flyspell-issue-message-flag nil)

;; enable interactive do
(ido-mode t)

;; disable auto-save capabilities
(setq make-backup-files nil)
(setq auto-save-default nil)

;; disable line wrapping
(set-default 'truncate-lines t)

;; quick whitespace-mode shortcut
(global-set-key (kbd "C-x w") 'whitespace-mode)
