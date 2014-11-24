;; keeps the agenda in an index file on disk
(let (agenda-dir (getenv "ORG_AGENDA_INDEX_FILE"))
  (when agenda-dir
    (setq org-directory (file-name-directory agenda-dir))
    (setq org-agenda-files agenda-dir)))

;; asks for a note when a TODO task is completed
(setq org-log-done 'note)

;; opens link under cursor in ORG mode when <RET> is pressed
(setq org-return-follows-link 1)

;; custom TODO workflow
(setq org-todo-keywords
      '((sequence "TODO" "WIP" "|" "DONE" "DELEGATED" "PRODUCTION")))
