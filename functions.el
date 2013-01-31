(defun add-hook-list (callback hooks)
  "Adds callback to each one of the hooks."
  (mapc (lambda (hook)
	  (add-hook hook callback))
	hooks))

(defun load-unix-shell-env ()
  "Adds the shell environment variables to Emacs' process environment."
  (let* ((env (shell-command-to-string "$SHELL -i -c 'printenv'"))
	 (entries (split-string env "\n" t)))
    (mapc (lambda (entry)
	    (add-to-list 'process-environment entry))
	  entries)))

