;;; Emacs UI configuration.

(setq default-frame-alist `((left . 1170) (top . 135)
			    (width . 84) (height . 44)
			    (font . "Hack 11")))

(set-face-attribute 'fixed-pitch-serif nil
		    :family "Hack"
		    :weight 'bold)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(load-theme 'modus-vivendi)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
