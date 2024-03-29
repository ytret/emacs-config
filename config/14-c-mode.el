;;; C mode configuration.

(add-hook 'c-mode-hook (lambda ()
			 (c-set-offset 'case-label '+) ;indent `case'
			 (c-toggle-comment-style -1)   ;//-style comments
             (local-set-key (kbd "C-c C-o") 'ff-find-other-file)
			 ))

(setq c-basic-offset 4)
(setq c-default-style '((java-mode . "java")
			(awk-mode . "awk")
			(other . "linux")))
