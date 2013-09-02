(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/site-lisp")

(require 'init-gui-frames)
(require 'init-color-theme)
(require 'init-utils)
(require 'init-windows)
(require 'init-uniquify)
(require 'init-evil)
(require 'init-editing-utils)

(require 'init-recentf)
(require 'init-etags)
(require 'init-cscope)
(require 'init-ido)
(require 'init-hippie-expand)
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-essh)

(require 'init-C)
(require 'init-R)

;;;; Important key-bindings
;;;switch between header file and implementation
;; C-c o
;;;code folding in C/C++
;; C-`
;;;list bookmarks
;; F2
;;;dired
;; F3
;;;speedbar
;; F4
;;;smart compiling in C/C++
;; F7

