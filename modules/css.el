(setq css-mode-hooks '(css-mode-hook
                       scss-mode-hook))

(add-to-list 'el-get-sources
	     '(:name css-mode
		     :after (setq css-indent-level 2)))

(add-to-list 'el-get-sources
             '(:name rainbow-mode
                     :after (progn
                              (add-hook-list 'rainbow-mode css-mode-hooks))))
