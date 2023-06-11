;; Buffer editing configuration.

(defun my-add-to-hooks (fun hooks)
  (mapc (lambda (hook) (add-hook hook fun)) hooks))

;; Indentation can't insert TAB characters.
(indent-tabs-mode -1)

(my-add-to-hooks (lambda () (indent-tabs-mode -1)) '(prog-mode-hook))

;;; Delete selection by typing.
(delete-selection-mode)

;; Show column number.
(column-number-mode)

;; Whitespace rules.
(add-hook 'before-save-hook #'delete-trailing-whitespace)
(setq require-final-newline t)

;; Truncate lines in some modes.
(setq truncate-lines nil)
(my-add-to-hooks (lambda () (setq truncate-lines t))
		 '(prog-mode-hook Info-mode-hook))

;; Save place in each file.
(save-place-mode)

;; Set fill column to 80 in some modes.
(my-add-to-hooks (lambda () (setq fill-column 80))
		 '(prog-mode-hook text-mode-hook))

;; Mark characters past the 80th column.
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

(global-set-key (kbd "C-c a") #'align)
(global-set-key (kbd "C-c e") #'eshell)
(global-set-key (kbd "s-SPC") #'ignore)
