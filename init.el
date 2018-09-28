;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")))

(package-initialize)

(push "/usr/local/bin" exec-path)
(setq default-directory "~/.emacs.d/")
(add-to-list 'load-path (expand-file-name "./lisp/" default-directory))

(load "env")
(load "packages")
(load "editor")
(load "ui")

(server-start)
