;;; Simple package configurations.

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;;; Vertico.
(require 'vertico)
(vertico-mode)

;;; Undo-tree.
(require 'undo-tree)
(global-undo-tree-mode)
(setq undo-tree-history-directory-alist
      '(("/home/y/*" . "/home/y/.cache/emacs/undo-tree")))

;;; Which-key.
(require 'which-key)
(which-key-mode)

;;; Magit.
(setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)
(setq magit-log-margin '(t age magit-log-margin-width nil 18))

;;; Avy.
(global-set-key (kbd "M-]") #'avy-goto-char)
