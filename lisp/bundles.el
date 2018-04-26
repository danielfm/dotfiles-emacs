;; themes
(el-get-bundle color-theme-zenburn)

;; file modes
(el-get-bundle s)
(el-get-bundle crontab-mode)
(el-get-bundle nginx-mode)
(el-get-bundle markdown-mode)
(el-get-bundle yaml-mode)

;; magit
(el-get-bundle! magit)
(with-eval-after-load 'magit
  (defvar magit-auto-revert-mode nil)
  (defvar magit-push-always-verify nil)
  (defvar magit-last-seen-setup-instructions "1.4.0")
  (global-set-key (kbd "C-x g") 'magit-status))

;; multiple cursors
(el-get-bundle! multiple-cursors
  (global-set-key (kbd "C-c m *") 'mc/edit-lines)
  (global-set-key (kbd "C-c m >") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-c m <") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c m .") 'mc/mark-all-like-this)
  (global-set-key (kbd "C-c m i") 'mc/mark-more-like-this-extended))

;; golang
(el-get-bundle go-lint)
(el-get-bundle go-mode
  (add-hook 'before-save-hook #'gofmt-before-save))

;; rust
(el-get-bundle rust-mode)

;; docker
(el-get-bundle dockerfile-mode
  (add-to-list 'auto-mode-alist (cons "\\.env" 'conf-mode)))

;; js
(el-get-bundle js2-mode
  (add-to-list 'auto-mode-alist (cons "\\.js" 'js2-mode))
  (setq js-indent-level 2))

;; terraform
(el-get-bundle terraform-mode)
(with-eval-after-load 'terraform-mode
  (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode))

;; groovy (mainly for Jenkinsfile)
(el-get-bundle groovy-emacs-mode
  (setq groovy-indent-offset 2)
  (add-to-list 'auto-mode-alist (cons "Jenkinsfile" 'groovy-mode)))

;; extra functionality

(el-get-bundle dired-plus)
(el-get-bundle erc)
(el-get-bundle highlight-parentheses)

;; other customizations

;; enable flex matching in ido-mode
(add-hook 'ido-setup-hook (lambda ()
			    (setq ido-enable-flex-matching t)))

;; better clipboard support in OSX
(when (eq system-type 'darwin)
  (el-get-bundle pbcopy
    (turn-on-pbcopy)))

;; org
(el-get-bundle org-mode)

;; org-mode key bindings
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)

;; org-mode directory
(setq org-directory "~/Dropbox/notes")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-agenda-files (directory-files-recursively org-directory "\.org$"))

;; org-mode workflow steps
(setq org-todo-keywords '((sequence "TODO(t)" "WIP(w!)" "|" "DONE(d@)" "CANCELED(c@)")))

;; org-mode babel languages
(org-babel-do-load-languages 'org-babel-load-languages '((emacs-lisp . t)
                                                         (ledger . t)
                                                         (python . t)
                                                         (ruby . t)
                                                         (shell . t)))

;; other org-mode flags
(setq org-hide-leading-stars t)
(setq org-src-fontify-natively t)
