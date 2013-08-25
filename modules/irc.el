(add-to-list 'el-get-sources
	     '(:name erc))

(add-to-list 'el-get-sources
	     '(:name erc-image
		     :type github
		     :pkgname "jondeandres/erc-image.el"
		     :description "Fetch and show received images in a ERC buffer"
		     :url "https://github.com/jondeandres/erc-image.el"
		     :after (progn
                              (require 'erc-image)
                              (add-to-list 'erc-modules 'image))))
