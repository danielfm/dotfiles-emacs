;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; highlight matching parens
(show-paren-mode t)

;; enable interactive do
(ido-mode t)

;; disable auto-save capabilities
(setq make-backup-files nil)
(setq auto-save-default nil)

;; shares the session using a TCP server
(server-start)
