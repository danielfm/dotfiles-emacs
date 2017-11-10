;; Themes
(el-get-bundle color-theme-zenburn)

;; File modes
(el-get-bundle s)
(el-get-bundle crontab-mode)
(el-get-bundle nginx-mode)
(el-get-bundle markdown-mode)
(el-get-bundle yaml-mode)

;; Magit
(el-get-bundle magit
  (progn
    (global-set-key (kbd "C-x g") 'magit-status)
    (setq magit-auto-revert-mode nil)
    (setq magit-push-always-verify nil)
    (setq magit-last-seen-setup-instructions "1.4.0")))

;; Multiple cursors
(el-get-bundle multiple-cursors
  (progn
    (global-set-key (kbd "C-c *") 'mc/edit-lines)
    (global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
    (global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
    (global-set-key (kbd "C-c .") 'mc/mark-all-like-this)
    (global-set-key (kbd "C-c i") 'mc/mark-more-like-this-extended)))

;; Golang
(el-get-bundle go-lint)
(el-get-bundle go-mode
               (progn
                 (add-hook 'befgore-save-hook #'gofmt-before-save)))

;; Docker
(el-get-bundle dockerfile-mode
  (progn
    (add-to-list 'auto-mode-alist (cons "\\.env" 'conf-mode))))

;; Terraform
(el-get-bundle terraform-mode
  (progn
    (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)))

;; Groovy (mainly for Jenkinsfile)
(el-get-bundle groovy-emacs-mode
  (progn
    (add-to-list 'auto-mode-alist (cons "Jenkinsfile" 'groovy-mode))))

;; Extra functionality

(el-get-bundle dired-plus)
(el-get-bundle erc)
(el-get-bundle highlight-parentheses)

;; Other customizations

;; Enable flex matching in ido-mode
(add-hook 'ido-setup-hook (lambda ()
			    (setq ido-enable-flex-matching t)))

;; Better clipboard support in OSX
(when (eq system-type 'darwin)
  (el-get-bundle pbcopy
    (progn
      (turn-on-pbcopy))))
