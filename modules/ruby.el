(setq ruby-files '("Capfile" "Gemfile" "Rakefile" "Procfile" "Guardfile$" "Vagrantfile$"
		   "\\.rake\\'" "\\.ru\\'" "\\.gemspec$"))

(add-to-list 'el-get-sources
	     '(:name scss-mode
		     :after (setq scss-compile-at-save nil)))

(add-to-list 'el-get-sources
	     '(:name yaml-mode))

(add-to-list 'el-get-sources
	     '(:name ruby-mode
		     :after (mapc (lambda (file)
				    (add-to-list 'auto-mode-alist (cons file 'ruby-mode)))
				  ruby-files)))
