;;; Recentf mode configuration.

(recentf-mode 1)

(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)

(global-set-key (kbd "C-x C-a") #'recentf-open-files)
