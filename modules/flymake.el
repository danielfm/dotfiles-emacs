(add-to-list 'el-get-sources
	     '(:name flymake
		     :after (progn
			      (setq flymake-run-in-place nil)
			      (setq temporary-file-directory (expand-file-name "tmp" emacs-root-dir)))))

(add-to-list 'el-get-sources
	     '(:name flymake-ruby))

;; displays the flymake errors on cursor, useful within the terminal
(add-to-list 'el-get-sources
	     '(:name flymake-cursor))
