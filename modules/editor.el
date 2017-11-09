(el-get-bundle markdown-mode)
(el-get-bundle makey)

(el-get-bundle pbcopy
               (progn
                 (when (eq system-type 'darwin)
                   (turn-on-pbcopy))))

(el-get-bundle multiple-cursors
               (progn
                 (global-set-key (kbd "C-c *") 'mc/edit-lines)
                 (global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
                 (global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
                 (global-set-key (kbd "C-c .") 'mc/mark-all-like-this)
                 (global-set-key (kbd "C-c i") 'mc/mark-more-like-this-extended)))


(add-to-list 'el-get-sources
             '(:name makey))
