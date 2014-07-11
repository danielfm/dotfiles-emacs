;; Keeps the agenda in an index file on disk
(let (agenda-dir (getenv "ORG_AGENDA_INDEX_FILE"))
  (when agenda-dir
    (setq org-directory (file-name-directory agenda-dir))
    (setq org-agenda-files agenda-dir)))

;; Asks for a note when a TODO task is completed
(setq org-log-done 'note)

;; Custom TODO workflow
(setq org-todo-keywords
      '((sequence "TODO" "WIP" "|" "DONE" "DELEGATED" "PRODUCTION")))
