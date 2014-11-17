(add-to-list 'el-get-sources
	     '(:name flymake
		     :after (progn
			      (setq flymake-run-in-place nil)
			      (setq temporary-file-directory (expand-file-name "tmp" default-directory)))))

(add-to-list 'el-get-sources
         '(:name yasnippet
                 :after (progn
                      (yas-global-mode 1))))

(add-to-list 'el-get-sources
	     '(:name flymake-ruby))

;; displays the flymake errors on cursor, useful within the terminal
(add-to-list 'el-get-sources
	     '(:name flymake-cursor
                 :after (progn
                      (require 'flymake-cursor))))
