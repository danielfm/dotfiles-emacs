(add-to-list 'el-get-sources
	     '(:name magit
		     :after (global-set-key (kbd "C-x g") 'magit-status)))
