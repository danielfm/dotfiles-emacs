(el-get-bundle magit
               (progn
                 (global-set-key (kbd "C-x g") 'magit-status)
                 (setq magit-auto-revert-mode nil)
                 (setq magit-push-always-verify nil)
                 (setq magit-last-seen-setup-instructions "1.4.0")))
