(add-to-list 'el-get-sources
	     '(:name multiple-cursors
                     :after (progn
                              (global-set-key (kbd "C-c *") 'mc/edit-lines)
                              (global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
                              (global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
                              (global-set-key (kbd "C-c .") 'mc/mark-all-like-this))))

(add-to-list 'el-get-sources
             '(:name editorconfig
                     :type github
                     :description "EditorConfig plugin for Emacs"
                     :pkgname "editorconfig/editorconfig-emacs"
                     :url "https://github.com/editorconfig/editorconfig-emacs"
                     :after (progn
                              (load "editorconfig"))))

(add-to-list 'el-get-sources
             '(:name discover-my-major
                     :type git
                     :url "https://github.com/steckerhalter/discover-my-major"
                     :after (progn
                              (global-set-key (kbd "C-h C-m") 'discover-my-major))))

(add-to-list 'el-get-sources
             '(:name makey))
