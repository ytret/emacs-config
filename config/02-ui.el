;;; Emacs UI configuration.

(setq default-frame-alist `((left . 1170) (top . 135)
			    (width . 84) (height . 39)
			    (font . "JetBrains Mono NL 11")))

(set-face-attribute 'fixed-pitch-serif nil
		    :family "JetBrains Mono NL"
		    :weight 'bold)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq frame-resize-pixelwise t)

(load-theme 'modus-vivendi)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

(blink-cursor-mode 0)

(windmove-default-keybindings)
