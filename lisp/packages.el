;; load el-get
(add-to-list 'load-path (expand-file-name "el-get/el-get" default-directory))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(setq recipe-dir (expand-file-name "el-get-user/recipes" default-directory))
(add-to-list 'el-get-recipe-path recipe-dir)

;; install all missing packages via el-get
(load "bundles")
(el-get 'sync)
