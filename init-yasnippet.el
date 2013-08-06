(add-to-list 'load-path "~/.emacs.d/site-lisp/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/site-lisp/yasnippet/snippets"))
(yas-global-mode 1)

(provide 'init-yasnippet)
