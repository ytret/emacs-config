;;; Frame positioning functions and key bindings.

(defvar my-framepos-saved '((53 135) (1170 135))
  "List of saved frame positions.")

(defun my-framepos-num-frames ()
  "Return the number of frames.
The returned value does not include the server's terminal frame."
  (length (cl-remove-if (lambda (x) (eq x terminal-frame)) (frame-list))))

(defun my-framepos-set (idx-saved &optional frame)
  "Set the position of FRAME to the saved position with index IDX-SAVED.
If FRAME is omitted or nil, then set the position of the selected frame."
  (or frame (setq frame (selected-frame)))
  (let* ((pos (nth idx-saved my-framepos-saved))
	 (x (car pos))
	 (y (cadr pos)))
    (set-frame-parameter frame 'fullscreen nil)
    (set-frame-position frame x y)))

(defun my-framepos-set-0th (&optional frame)
  "Set the position of FRAME to the 0th saved position.
See `my-framepos-set' and `my-framepos-saved'."
  (interactive)
  (my-framepos-set 0 frame))

(defun my-framepos-set-1st (&optional frame)
  "Set the position of FRAME to the 1st saved position.
See `my-framepos-set' and `my-framepos-saved'."
  (interactive)
  (my-framepos-set 1 frame))

(defun my-framepos-set-0th-or-1st (&optional frame)
  "Set the position of FRAME to either 0th or 1st saved position.
The index is equal to ((`my-framepos-num-frames' - 1) % 2)."
  (interactive)
  (let ((frame (or frame (selected-frame))))
    (my-framepos-set (cl-rem (my-framepos-num-frames) 2)
		  frame)))

(global-set-key (kbd "C-c <") #'my-framepos-set-0th)
(global-set-key (kbd "C-c >") #'my-framepos-set-1st)
