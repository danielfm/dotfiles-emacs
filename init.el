(setq emacs-root-dir (expand-file-name "~/.emacs.d"))

(push "/usr/local/bin" exec-path)
(add-to-list 'load-path emacs-root-dir)

(load "functions")
(load "env")
(load "packages")
(load "editor")
(load "ui")
(load "window")
