;; package repositories
(setq package-archives '(("gnu"          . "https://elpa.gnu.org/packages/")
                         ("marmalade"    . "https://marmalade-repo.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")))

;; install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; package configuration

;; themes

(use-package solarized-theme
  :ensure t)

(use-package material-theme
  :ensure t
  :config (load-theme 'material t))

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

(use-package paredit
  :ensure t)

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

(use-package pbcopy
  :ensure t
  :if (eq system-type 'darwin)
  :config (turn-on-pbcopy))

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

            ;; enable auto-indentation
            (setq org-startup-indented t)

            ;; org-agenda configuration
            (setq org-agenda-files `(,(concat org-directory "/tickler.org")
                                     ,(concat org-directory "/gtd.org")
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

            ;; other Org-mode flags
            (setq org-hide-leading-stars t)
            (setq org-src-fontify-natively t)))
