(add-to-list 'el-get-sources
	     '(:name magit
		     :after (progn
                              (global-set-key (kbd "C-x g") 'magit-status)
                              (setq magit-auto-revert-mode nil)
                              (setq magit-last-seen-setup-instructions "1.4.0"))))
