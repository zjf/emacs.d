(add-to-list 'load-path "~/.emacs.d/site-lisp/evil")
(require 'evil)
(evil-mode 1)

(loop for (mode . state) in
      '((inferior-ess-mode . emacs)
        (ess-help-mode . emacs)
        (shell-mode . emacs)
        (term-mode . emacs)
        (undo-tree-virualizer-mode . emacs)
        (compilation-mode . emacs)
        (gud-mode . emacs)
        )
      do (evil-set-initial-state mode state))

(define-key evil-normal-state-map (kbd "M-.") (kbd "\\ M-."))
(setq evil-want-fine-undo 'fine)

(provide 'init-evil)
