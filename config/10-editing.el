;;; Buffer editing configuration.

(defun my-add-to-hooks (fun hooks)
  (mapc (lambda (hook) (add-hook hook fun)) hooks))

;;; Indentation can't insert TAB characters.
(setq-default indent-tabs-mode nil)

;;; Delete selection by typing.
(delete-selection-mode)

;;; Show column number.
(column-number-mode)

;;; Save place in each file.
(save-place-mode)

;;; Whitespace rules.
(add-hook 'before-save-hook #'delete-trailing-whitespace)
(setq require-final-newline t)

;;; Truncate lines in some modes.
(setq truncate-lines nil)
(my-add-to-hooks (lambda () (setq truncate-lines t))
		 '(prog-mode-hook Info-mode-hook))

;;; Set fill column to 80 in some modes.
(my-add-to-hooks (lambda () (setq fill-column 80))
		 '(prog-mode-hook text-mode-hook))

(require 'paredit)
(my-add-to-hooks #'enable-paredit-mode
		 '(emacs-lisp-mode-hook
		   ielm-mode-hook
		   lisp-mode-hook
		   lisp-interaction-mode-hook
		   scheme-mode-hook))

;;; Mark characters past the 80th column.
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

;;; Hexl mode.
(setq hexl-bits 8)

(global-set-key (kbd "C-c a") #'align)
(global-set-key (kbd "C-c e") #'eshell)
