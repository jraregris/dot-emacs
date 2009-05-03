;; A script for ‘remember pop-ups’
;; http://metajack.im/2008/12/30/gtd-capture-with-emacs-orgmode/

(defadvice remember-finalize (after delete-remember-frame activate)

  "Advise remember-finalize to close the frame if it is the remember frame"

  (if (equal "*Remember*" (frame-parameter nil 'name))
      (delete-frame)))

  
(defadvice remember-destroy (after delete-remember-frame activate)

  "Advise remember-destroy to close the frame if it is the remember frame"

  (if (equal "*Remember*" (frame-parameter nil 'name))
      (delete-frame)))



;; make the frame contain a single window. by default org-remember

;; splits the window
(add-hook 'remember-mode-hook  'delete-other-windows)

(defun make-remember-frame ()
  "Create a new frame and run org-remember"
  (interactive)
  (make-frame '((name . "*Remember*") (width . 80) (height . 10)))
  (select-frame-by-name "*Remember*")
  (org-remember))

