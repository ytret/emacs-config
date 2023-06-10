;;; Emacs UI configuration.

(setq default-frame-alist `((left . 53) (top . 135)
			    (width . 80) (height . 44)))

(set-face-attribute 'default nil
		    :family "Hack"
		    :height 105)
(set-face-attribute 'fixed-pitch-serif nil
		    :family "Hack"
		    :weight 'bold)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
