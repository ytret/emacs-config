;;; PATH (`exec-path') configuration.

(defun my-set-exec-path-from-shell-path ()
  "Set up Emacs' `exec-path' and PATH environment variables to
match that used by the user's shell."
  (let ((path-from-shell (replace-regexp-in-string
			  " " ":" (shell-command-to-string
				   "fish -lc 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(my-set-exec-path-from-shell-path)
