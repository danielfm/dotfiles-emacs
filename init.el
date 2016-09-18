(push "/usr/local/bin" exec-path)

(setq default-directory "~/.emacs.d/")
(add-to-list 'load-path (expand-file-name "./lisp/" default-directory))

(load "functions")
(load "env")
(load "packages")
(load "editor")
(load "ui")
(load "window")

(server-start)
