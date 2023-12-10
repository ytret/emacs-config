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
      '(("/home/ytret/*" . "/home/ytret/.cache/emacs/undo-tree")))

;;; Which-key.
(require 'which-key)
(which-key-mode)

;;; Magit.
;; (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)
(setq magit-log-margin '(t "%Y-%m-%d %H:%M" magit-log-margin-width nil 18))

;;; Avy.
(global-set-key (kbd "M-]") #'avy-goto-char)

;;; Elpy - Emacs Python Development Environment.
(use-package elpy
  :ensure t
  :hook (elpy-mode . (lambda () (highlight-indentation-mode -1)))
  :init
  (elpy-enable))

;;; CMake.
(use-package cmake-mode)
