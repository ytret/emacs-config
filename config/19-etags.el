;;; Etags.

(defun my-gen-tags ()
  "Generate TAGS for the current working directory."
  (interactive)
  (shell-command "find . -type f -name '*.[ch]' -print | etags -"))
