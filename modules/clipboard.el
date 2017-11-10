(el-get-bundle pbcopy
  (progn
    (when (eq system-type 'darwin)
      (turn-on-pbcopy))))
