;;; Emacs server and frames configuration.

(require 'server)

(unless (server-running-p)
  (server-start))

(defun my-server-reposition ()
  (with-demoted-errors
      "my-server-reposition error: %s"
    (progn
      (my-framepos-set-0th-or-1st)
      (x-focus-frame (selected-frame))
      (display-about-screen))))

(add-hook 'server-after-make-frame-hook #'my-server-reposition)
