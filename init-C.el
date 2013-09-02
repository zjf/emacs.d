;; Programming
(global-set-key (kbd "<f7>") 'smart-compile)
(defun smart-compile()
  (interactive)
  (let ((candidate-make-file-name '("makefile" "Makefile" "GNUmakefile"))
        (command nil))
    (if (not (null
              (find t candidate-make-file-name :key
                    '(lambda (f) (file-readable-p f)))))
        (setq command "make -k ")
      (if (null (buffer-file-name (current-buffer)))
          (message "Buffer not attached to a file, won't compile!")
        (if (eq major-mode 'c-mode)
            (setq command
                  (concat "gcc -Wall -o "
                          (file-name-sans-extension
                           (file-name-nondirectory buffer-file-name))
                          " "
                          (file-name-nondirectory buffer-file-name)
                          " -g -lm "))
          (if (eq major-mode 'c++-mode)
              (setq command
                    (concat "g++ -Wall -o "
                            (file-name-sans-extension
                             (file-name-nondirectory buffer-file-name))
                            " "
                            (file-name-nondirectory buffer-file-name)
                            " -g -lm "))
            (message "Unknow mode, won't compile!")))))
    (if (not (null command))
        (let ((command (read-from-minibuffer "Compile command: " command)))
          (compile command)))))


(require 'cc-mode)
(setq auto-mode-alist
      (append '(("\\.h$" . c-mode)) auto-mode-alist))
(defun my-c-mode-common-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (hs-minor-mode 1)
  (define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
  (define-key c-mode-base-map [(return)] 'newline-and-indent)
  (setq c-basic-offset 4))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
;; quickly switching between header and implementation
;; http://emacs-fu.blogspot.com/2008/12/quickly-switching-between-header-and.html
(add-hook 'c-mode-common-hook
  (lambda()
    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))
(defun my-c++-mode-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (setq c-basic-offset 4))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(provide 'init-C)
