;;ORG-stuff

;; The following lines are always needed.  Choose your own keys.
     (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)

     (setq org-log-done t)

     (global-font-lock-mode 1)                     ; for all buffers
     (add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

     (transient-mark-mode 1)


(require 'org)
(require 'org-mouse)

;; remember

(org-remember-insinuate)
(setq org-directory "~/org/")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cr" 'org-remember)


(setq org-remember-templates
 '(
   ("Todo" ?t "* TODO %?\n  %i\n  %a" "~/org/TODO.org" "Tasks")
   ("Journal" ?j "* %T %^{Title} %^G\n  %i%?\n  %a\n  %x" "~/org/JOURNAL.org")
   ("Idea" ?i "* %^{Title}\n  %i\n  %a" "~/org/JOURNAL.org" "New Ideas")
   ("TV" ?t "* %^{Show} %^{Series}-%^{Episode} :seen:\n  %T\n  %?" "~/org/JOURNAL.org")
   ("Song" ?s "** %^{Band} : %^{Title} :idea:song:\n  Sounds like: %^{Sounds like}\n  %?\n*** Music\n*** Lyrics" "~/org/prj/tvang.org" "Ideas")
   ))

(load "make-remember-frame.el")