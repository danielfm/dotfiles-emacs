(setq groovy-files '("Jenkinsfile"))

(add-to-list 'el-get-sources
	     '(:name groovy-emacs-mode
                     :after (mapc (lambda (file)
				    (add-to-list 'auto-mode-alist (cons file 'groovy-mode)))
				  groovy-files)))
