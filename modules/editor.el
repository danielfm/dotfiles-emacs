(add-to-list 'el-get-sources
	     '(:name multiple-cursors
                     :after (progn
                              (global-set-key (kbd "C-c *") 'mc/edit-lines)
                              (global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
                              (global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
                              (global-set-key (kbd "C-c .") 'mc/mark-all-like-this)
                              (global-set-key (kbd "C-c i") 'mc/mark-more-like-this-extended))))


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
             '(:name tramp
                     :after (progn
                              (setq tramp-default-method "ssh"))))

(add-to-list 'el-get-sources
             '(:name makey))

(add-to-list 'el-get-sources
             '(:name powerline
                     :after (progn
                              (powerline-default-theme))))

;; better clipboard integration in osx and terminal emacs
(add-to-list 'el-get-sources
             '(:name pbcopy
                     :after (progn
                              (when (eq system-type 'darwin)
                                (turn-on-pbcopy)))))
