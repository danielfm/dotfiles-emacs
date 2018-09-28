;; don't show the startup help screen
(setq inhibit-startup-screen t)

;; mode line settings
(column-number-mode t)
(line-number-mode t)
(size-indication-mode t)

;; remove clutter from the UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(scroll-bar-mode -1)

;; blinking cursor
(blink-cursor-mode t)

;; enable mouse gestures in terminal
(require 'mouse)
(xterm-mouse-mode t)

;; disable alarm bell beep
(setq ring-bell-function 'ignore)

;; use Monaco font in Mac OS X
(when (eq system-type 'darwin)
  (set-default-font "Monaco"))

;; emacs-plus natural bar for better looks in OS X
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
