(add-to-list 'el-get-sources
	     '(:name markdown-mode))

(add-to-list 'el-get-sources
	     '(:name textile-mode))

(add-to-list 'el-get-sources
	     '(:name web-mode
		     :after (add-hook 'sgml-mode-hook 'web-mode)))
