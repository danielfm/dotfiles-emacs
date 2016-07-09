(add-to-list 'el-get-sources
	     '(:name js2-mode))

(add-to-list 'el-get-sources
             '(:name ecmascript-mode
                     :after (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))))
