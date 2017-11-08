(add-to-list 'el-get-sources
	     '(:name terraform-mode
                     :after (progn
                              (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode))))
