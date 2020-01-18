;; package repositories
(setq package-archives '(("gnu"          . "https://elpa.gnu.org/packages/")
                         ("marmalade"    . "https://marmalade-repo.org/packages/")
                         ("melpa-stable" . "https://melpa.org/packages/")))

;; install use-package

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; package configuration

;; themes

 (use-package material-theme
   :ensure t
   :config (load-theme 'material-light t))

;; file modes

(use-package crontab-mode
  :ensure t)

(use-package nginx-mode
  :ensure t)

(use-package rust-mode
  :ensure t)

(use-package yaml-mode
  :ensure t)

(use-package markdown-mode
  :ensure t
  :config (setq markdown-max-image-size '(600 . 600)))

(use-package dockerfile-mode
  :ensure t
  :mode ("\\.env" . conf-mode))

(use-package go-mode
  :ensure t
  :config (add-hook 'before-save-hook #'gofmt-before-save))

(use-package scala-mode
  :ensure t
  :mode "\\.s\\(cala\\|bt\\)$")

(use-package groovy-mode
  :ensure t
  :mode (("Jenkinsfile" . groovy-mode))
  :config (setq groovy-indent-offset 2))

(use-package js2-mode
  :ensure t
  :mode (("\\.js" . js2-mode))
  :config (setq js-indent-level 2))

(use-package terraform-mode
  :ensure t
  :config (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode))

;; editing experience

(use-package better-defaults
  :ensure t)

(use-package paredit
  :ensure t
  :config (progn
            (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
            (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
            (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
            (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
            (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
            (add-hook 'scheme-mode-hook           #'enable-paredit-mode)))

(use-package highlight-parentheses
  :ensure t)

(use-package whitespace-mode
  :bind (("C-x w" . whitespace-mode)))

(use-package multiple-cursors
  :ensure t
  :bind (("C-c m *" . mc/edit-lines)
         ("C-c m >" . mc/mark-next-like-this)
         ("C-c m <" . mc/mark-previous-like-this)
         ("C-c m ." . mc/mark-all-like-this)
         ("C-c m i" . mc/mark-more-like-this-extended)))

(use-package rainbow-delimiters
  :ensure t
  :config (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

;; tools

(use-package erc
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(use-package org
  :ensure t
  :bind (("C-c a" . org-agenda)
         ("C-c c" . org-capture)
         ("C-c l" . org-store-link))
  :config (progn
            (setq org-directory "~/Dropbox/notes")
            (setq org-default-notes-file (concat org-directory "/notes.org"))

            ;; english dates regardless of the system locale
            (setq system-time-locale "C")

            ;; enable auto-indentation with proper line-wrapping
            (setq org-startup-indented t)
            (add-hook 'org-mode-hook 'visual-line-mode)

            ;; org-agenda configuration
            (setq org-agenda-files `(,(concat org-directory "/tickler.org")
                                     ,(concat org-directory "/tickler.org_archive")
                                     ,(concat org-directory "/gtd.org")
                                     ,(concat org-directory "/gtd.org_archive")
                                     ,(concat org-directory "/inbox.org")))
            ;; capture templates
            (setq org-capture-templates `(("t" "Todo [inbox]" entry
                                           (file+headline ,(concat org-directory "/inbox.org") "Inbox")
                                 "* TODO %i%?")
                                          ("T" "Tickler" entry
                                           (file+headline ,(concat org-directory "/tickler.org") "Tickler")
                                           "* %i%? \n %U")))

            (setq org-refile-targets `((,(concat org-directory "/gtd.org") :maxlevel . 3)
                                       (,(concat org-directory "/someday.org") :level . 1)
                                       (,(concat org-directory "/tickler.org") :maxlevel . 2)))

            ;; workflow steps
            (setq org-todo-keywords '((sequence "TODO(t)" "WIP(w)" "REVIEW(r)" "|" "DONE(d@)" "CANCELED(c@)")))

            ;; persist clock across sessions
            (setq org-clock-persist 'history)
            (org-clock-persistence-insinuate)

            ;; other configs
            (setq org-hide-leading-stars t)
            (setq org-src-fontify-natively t)))

;; sanitize minor mode names

(use-package diminish
  :ensure t
  :config (progn
            (diminish 'paredit-mode " ()")
            (diminish 'flyspell-mode " ~")
            (diminish 'eldoc-mode " doc")))

;; spotify

(setq spotify-keymap-prefix "M-p")

(add-to-list 'load-path "~/Projects/spotify.el")
(require 'spotify)

(setq spotify-oauth2-client-id "543b87d8c96e4a908ef0188d1fb8f8c1")
(setq spotify-oauth2-client-secret "8c2b9a00f25849e383598e62fed01e8d")

(setq spotify-genius-token "Dxpe0urpYxZ0NQhKjGrkJJTXh9HXGkxgzTUd_xKfrakBplDq5PkO2sociIuV6piv")

(setq spotify-mode-line-refresh-interval 5)
(setq spotify-player-status-refresh-interval 5)

(setq spotify-mode-line-truncate-length 20)
(setq spotify-player-status-truncate-length 20)

(setq spotify-mode-line-playing-text "P")
(setq spotify-player-status-playing-text "P")
(setq spotify-mode-line-paused-text "-")
(setq spotify-player-status-paused-text "-")
(setq spotify-mode-line-stopped-text "-")
(setq spotify-player-status-stopped-text "-")

(setq spotify-mode-line-format "[%a - %t][%p%r%s]")
(setq spotify-player-status-format "[%a - %t][%p%r%s]")

(setq spotify-api-locale "pt_BR")
(setq spotify-api-country "BR")

(setq spotify-transport 'connect)

;; (global-spotify-remote-mode t)


