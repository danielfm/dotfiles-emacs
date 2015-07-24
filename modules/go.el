(add-to-list 'el-get-sources
	     '(:name go-mode
                     :after (progn
                              (add-hook 'before-save-hook #'gofmt-before-save))))

(add-to-list 'el-get-sources
             '(:name go-lint))
