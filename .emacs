;; Timer head
(defvar *emacs-load-start* (current-time))

(require 'cl)
(setq load-path (append '("/home/oddmunds/elisp") load-path))

(load "trat.el")


;;ORG

;; The following lines are always needed.  Choose your own keys.
     (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)

     (global-font-lock-mode 1)                     ; for all buffers
     (add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

     (transient-mark-mode 1)


(require 'org)
(require 'org-mouse)

;; Gnus

;;(setq gnus-select-method '(nntp "news.start.no"))


;; Timer tail
(message ".emacs loaded in %ds" (destructuring-bind (hi lo ms) (current-time)(- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(canlock-password "0ccf61f2a6abe1f5f79997e47c44e95e011dd5e0")
 '(inhibit-startup-screen t)
 '(org-agenda-files nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )





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