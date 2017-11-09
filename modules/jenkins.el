(el-get-bundle groovy-emacs-mode
               (progn
                 (add-to-list 'auto-mode-alist (cons "Jenkinsfile" 'groovy-mode))))
