(add-to-list 'el-get-sources
	     '(:name jenkins
		     :after (progn
                              (add-to-list 'auto-mode-alist (cons "Jenkinsfile" 'groovy-mode)))))
