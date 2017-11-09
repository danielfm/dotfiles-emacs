(el-get-bundle go-lint)

(el-get-bundle go-mode
               (progn
                 (add-hook 'befgore-save-hook #'gofmt-before-save)))
