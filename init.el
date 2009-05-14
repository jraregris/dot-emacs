;; Timer head
(defvar *emacs-load-start* (current-time))

(require 'cl)
(setq load-path (append '("/home/oddmunds/elisp") load-path))
(setq load-path (append '("/home/oddmunds/elisp/dot-emacs") load-path))

(load "trat.el")



;; Timer tail
(message ".emacs loaded in %ds" (destructuring-bind (hi lo ms) (current-time)(- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(canlock-password "0ccf61f2a6abe1f5f79997e47c44e95e011dd5e0")
 '(gnus-visual (quote (summary-highlight group-highlight article-highlight mouse-face summary-menu group-menu article-menu tree-highlight menu highlight browse-menu server-menu page-marker tree-menu binary-menu pick-menu)))
 '(inhibit-startup-screen t)
 '(org-agenda-files (quote ("~/org/LOG.org" "~/org/prj/inf5750.org" "~/org/logging.org" "~/org/TODO.org" "~/org/prj/winkland.org" "~/org/JOURNAL.org" "~/org/prj/topolov.org" "~/org/prj/starwars.org" "~/org/prj/fashionhouse.org" "~/org/sportsaand.org" "~/org/old.org" "~/org/film.org")))
 '(org-default-notes-file "~/org/.notes")
 '(org-hide-leading-stars t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


(load "org-init.el")
(load "gnus-init.el")

; Steve Yegge-tips

 ; Invoke M-x without the Alt key
  (global-set-key "\C-x\C-m" 'execute-extended-command)
  (global-set-key "\C-c\C-m" 'execute-extended-command)

 ; Prefer backward-kill-word over Backspace
  (global-set-key "\C-w" 'backward-kill-word)
  (global-set-key "\C-x\C-k" 'kill-region)
  (global-set-key "\C-c\C-k" 'kill-region)

 ; Lose the UI
  (if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
  (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

  (setq inhibit-splash-screen t)
  (show-paren-mode 1)


; Color theme
  (add-to-list 'load-path "/home/oddmunds/elisp/color-theme")
  (require 'color-theme)

  (require 'gunmetal)
  (eval-after-load "color-theme"
    '(progn
       (color-theme-initialize)
       (color-theme-gunmetal)))

  


; Smaller font
  (set-default-font "Terminus 8")

; Magit
  (require 'magit)

; w3m
  (require 'w3m-load)

; tramp

(require 'tramp)
(setq tramp-default-method "ssh")


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))


;; yasnippet

(add-to-list 'load-path "~/elisp/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/elisp/yasnippet/snippets")

(global-set-key [s-tab] 'yas/expand)


; chm-view

(require 'chm-view)
(setq browse-url-browser-function 'w3m-browse-url)