(add-to-list 'el-get-sources
	     '(:name solarized-theme))

(add-to-list 'el-get-sources
	     '(:name tomorrow-theme
		     :type github
		     :pkgname "danielfm/tomorrow-theme"
		     :description "A Tomorrow Theme fork that works"
		     :url "https://github.com/danielfm/tomorrow-theme"
		     :after (add-to-list 'custom-theme-load-path
					 (expand-file-name "GNU Emacs"))))

(add-to-list 'el-get-sources
	     '(:name zenburn-theme
		     :type github
		     :pkgname "bbatsov/zenburn-emacs"
		     :description "The Zenburn colour theme ported to Emacs"
		     :url "https://github.com/bbatsov/zenburn-emacs"
		     :post-init (add-to-list 'custom-theme-load-path
				 default-directory)))
