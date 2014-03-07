(add-to-list 'el-get-sources
	     '(:name multiple-cursors
                     :after (progn
                              (global-set-key (kbd "C-c *") 'mc/edit-lines)
                              (global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
                              (global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
                              (global-set-key (kbd "C-c .") 'mc/mark-all-like-this))))
