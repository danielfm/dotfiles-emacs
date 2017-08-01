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
(set-fringe-style -1)

;; blinking cursor
(blink-cursor-mode t)

;; enable mouse gestures in terminal
(require 'mouse)
(xterm-mouse-mode t)

;; disable alarm bell beep
(setq visible-bell nil)

;; use Monaco font in Mac OS X
(when (eq system-type 'darwin)
  (set-default-font "Monaco"))

;; my theme of choice
(load-theme 'tomorrow-night t)

;; available custom themes
;;
;; solarized:
;; (load-theme 'solarized t)
;; (load-theme 'solarized-dark t)
;;
;; tomorrow:
;; (load-theme 'tomorrow t)
;; (load-theme 'tomorrow-night t)
;; (load-theme 'tomorrow-night-bright t)
;; (load-theme 'tomorrow-night-blue t)
;; (load-theme 'tomorrow-night-eighties t)
;;
;; zenburn:
;; (load-theme 'zenburn t)
