(setq ruby-files '("Capfile" "Gemfile" "Rakefile" "Procfile" "Guardfile$" "Vagrantfile$"
		   "\\.rake\\'" "\\.ru\\'" "\\.gemspec$"))

(add-to-list 'el-get-sources
	     '(:name bundler))

(add-to-list 'el-get-sources
	     '(:name feature-mode))

(add-to-list 'el-get-sources
	     '(:name ruby-test-mode))

(add-to-list 'el-get-sources
	     '(:name rvm))

(add-to-list 'el-get-sources
	     '(:name sass-mode))

(add-to-list 'el-get-sources
	     '(:name scss-mode))

(add-to-list 'el-get-sources
	     '(:name yaml-mode))

(add-to-list 'el-get-sources
	     '(:name ruby-mode
		     :after (mapc (lambda (file)
				    (add-to-list 'auto-mode-alist (cons file 'ruby-mode)))
				  ruby-files)))
