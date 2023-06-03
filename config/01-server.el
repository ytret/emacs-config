;; Emacs server and frames configuration.

(require 'server)

(unless (server-running-p)
  (server-start))

(defun my-server-reposition ()
  (with-demoted-errors
      "my-server-reposition error: %s"
    (progn
      (display-about-screen)
      (my-framepos-set-0th-or-1st)
      (x-focus-frame (selected-frame)))))

(add-hook 'server-after-make-frame-hook #'my-server-reposition)
