(require 'gnus)
(setq gnus-select-method '(nntp "news.individual.net"))
(add-to-list 'gnus-secondary-select-methods '(nntp "news.gmane.org"))
(setq user-full-name "Oddmund")
(setq user-mail-address "oddmund@oddmundo.com")

(setq gnus-group-line-format "%P%M%S[%5t]%5y : %(%g%)\n")

(setq gnus-use-nocem t)