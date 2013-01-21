(setq lisp-mode-hooks '(emacs-lisp-mode-hook
			lisp-mode-hook
			lisp-interaction-mode-hook
			scheme-mode-hook
			clojure-mode-hook))

(add-to-list 'el-get-sources
	     '(:name paredit
		     :after (add-hook-list 'paredit-mode lisp-mode-hooks)))

(add-to-list 'el-get-sources
	     '(:name rainbow-delimiters
		     :after (add-hook-list 'rainbow-delimiters-mode lisp-mode-hooks)))

(add-to-list 'el-get-sources
	     '(:name slime
		     :after (progn
			      (let ((slime-helper-file (getenv "SLIME_HELPER_FILE"))
				    (lisp-program (getenv "LISP_PROGRAM")))
				(when slime-helper-file
				  (load slime-helper-file))
				(when lisp-program
				  (setq inferior-lisp-program lisp-program))))))
