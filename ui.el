;; don't show the startup help screen
(setq inhibit-startup-screen t)

;; mode line settings
(column-number-mode t)
(line-number-mode t)
(size-indication-mode t)

;; remove clutter from the UI
(blink-cursor-mode t)
(tool-bar-mode -1)
(tooltip-mode -1)
(scroll-bar-mode -1)
(set-fringe-style -1)

;; my custom theme of choice
(load-theme 'zenburn t)

;; available custom themes
;;
;; solarized:
;; (load-theme 'solarized t)
;; (load-theme 'solarized-dark t)
;;
;; tomorrow: (currently does not support magit diff colors)
;; (load-theme 'tomorrow t)
;; (load-theme 'tomorrow-night t)
;; (load-theme 'tomorrow-night-bright t)
;; (load-theme 'tomorrow-night-blue t)
;; (load-theme 'tomorrow-night-eighties t)
;;
;; zenburn:
;; (load-theme 'zenburn t)
