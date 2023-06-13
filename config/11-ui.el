;;; Emacs UI configuration.

(setq default-frame-alist `((left . 1170) (top . 135)
			    (width . 80) (height . 44)
			    (font . "Hack 11")))

(set-face-attribute 'fixed-pitch-serif nil
		    :family "Hack"
		    :weight 'bold)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
