;; ESS
(load "~/.emacs.d/site-lisp/ess-13.05/lisp/ess-site")
(setq-default inferior-R-program-name "/usr/bin/R")
;; From SO: http://stackoverflow.com/questions/2901198/useful-keyboard-shortcuts-and-tips-for-ess-r
;;(setq comint-prompt-read-only t)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)
(ess-toggle-underscore nil)

(provide 'init-R)
