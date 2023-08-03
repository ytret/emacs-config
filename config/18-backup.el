;;; Backup files configuration.

(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.cache/emacs/backups/"))
      auto-save-file-name-transforms `((".*" "~/.cache/emacs/autosaves/" t))
      delete-old-versions t
      keep-new-versions 6
      keep-old-versions 2
      version-control t)
