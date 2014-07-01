;; Keeps the agenda in an index file on disk
(let (agenda-dir (getenv "ORG_AGENDA_INDEX_FILE"))
  (when agenda-dir
    (setq org-agenda-files agenda-dir)))
