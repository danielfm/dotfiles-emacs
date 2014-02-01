(add-to-list 'el-get-sources
	     '(:name clojure-mode))

(add-to-list 'el-get-sources
	     '(:name cider
		     :after (progn
                              ;; Enables eldoc in Clojure buffers
                              (add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

                              ;; Enables paredit
                              (add-hook 'cider-repl-mode-hook 'paredit-mode)

                              ;; Enables rainbow delimiters
                              (add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

                              ;; Hides special buffers in some buffer switching commands
                              (setq nrepl-hide-special-buffers t)

                              ;; Disabled auto-complete on tab; indent instead
                              (setq cider-repl-tab-command 'indent-for-tab-command)

                              ;; Error handling
                              (setq cider-popup-stacktraces nil)
                              (setq cider-repl-popup-stacktraces t)

                              ;; Limits the number of items to print of a collection
                              (setq cider-repl-print-length 100)

                              ;; Changes the result prefix for REPL evals
                              (setq cider-repl-result-prefix ";; => "))))
