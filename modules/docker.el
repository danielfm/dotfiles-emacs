(add-to-list 'el-get-sources
	     '(:name dockerfile-mode
                     :after (progn
                              (add-to-list 'auto-mode-alist (cons "\\.env" 'conf-mode)))))
