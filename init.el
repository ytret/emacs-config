(defun my-load (file)
  (with-demoted-errors
      "my-load error: %s"
    (load file)))

(let ((config-dir (expand-file-name "config" user-emacs-directory)))
  (when (file-exists-p config-dir)
    (add-to-list 'load-path config-dir)
    (mapc #'my-load (directory-files config-dir nil "^[^#].*el$"))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(cmake-mode elpy lsp-mode paredit avy magit which-key undo-tree vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
