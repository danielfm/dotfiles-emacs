(add-to-list 'el-get-sources
	     '(:name markdown-mode))

(add-to-list 'el-get-sources
	     '(:name textile-mode))

(add-to-list 'el-get-sources
	     '(:name web-mode
		     :after (progn
                              (add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
                              (add-hook 'sgml-mode-hook 'web-mode)
                              (setq web-mode-markup-indent-offset 2)
                              (setq web-mode-css-indent-offset 2)
                              (setq web-mode-code-indent-offset 2))))
