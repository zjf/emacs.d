(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme-6.6.0")
(if (not window-system)
    (progn
      (require 'color-theme)
      (eval-after-load "color-theme"
        '(progn
           (color-theme-initialize)
           (color-theme-hober))))
  (load-theme 'deeper-blue t))

;;(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-color-theme-solarized-master")
;;(require 'color-theme-solarized)
;;(color-theme-solarized-dark)

(provide 'init-color-theme)
