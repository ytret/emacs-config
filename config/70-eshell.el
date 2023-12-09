;;; Eshell configuration.

(require 'dash)

;;; https://www.emacswiki.org/emacs/EshellPrompt
(defun my-abbreviated-path (path max-len)
  (let* ((components (split-string (abbreviate-file-name path) "/"))
	 (len (+ (1- (length components))
		 (--reduce-from (+ acc (length it)) 0 components)))
	 (str ""))
    (while (and (> len max-len)
		(cdr components))
      (setq str (concat str
			(cond ((= 0 (length (car components))) "/")
			      ((= 1 (length (car components)))
			       (concat (car components) "/"))
			      (t
			       (if (string= "."
					    (string (elt (car components) 0)))
				   (concat (substring (car components) 0 2))
				 (string (elt (car components) 0) ?/)))))
	    len (- len (1- (length (car components))))
	    components (cdr components)))
    (concat str (--reduce (concat acc "/" it) components))))

(defun my-eshell-prompt-function ()
  (concat (my-abbreviated-path (eshell/pwd) 30)
	  (if (= (user-uid) 0) " # " " $ ")))

(setq eshell-prompt-function #'my-eshell-prompt-function)
(setq eshell-highlight-prompt t)
