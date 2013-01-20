(add-to-list 'el-get-sources
	     '(:name clojure-mode))

(add-to-list 'el-get-sources
	     '(:name nrepl
		     :after (progn
			      (setq nrepl-host "localhost")
			      (setq nrepl-port "57783"))))
