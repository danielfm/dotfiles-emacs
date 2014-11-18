(add-to-list 'el-get-sources
             '(:name restclient
                     :type github
                     :description "HTTP REST client tool for emacs"
                     :pkgname "pashky/restclient.el"
                     :after (progn
                              (require 'restclient)
                              (add-to-list 'auto-mode-alist '("\\.http" . restclient-mode)))))
