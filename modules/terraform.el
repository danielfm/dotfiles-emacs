(el-get-bundle terraform-mode
               (progn
                 (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)))
