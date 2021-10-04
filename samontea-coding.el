;; enalbe projectile globaly
(projectile-global-mode)

;; setup company
(require 'company-lsp)
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0) ;; default is 0.2

;; setup dap-lldb
;; (setq dap-auto-configure-features '(sessions locals controls tooltip))
;; (require 'dap-lldb)

(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'c++-mode-hook #'lsp)
(add-hook 'c++-mode-hook (lambda () (auto-complete-mode -1)))
(add-hook 'scala-mode-hook #'lsp)
(add-hook 'scala-mode-hook (lambda () (auto-complete-mode -1)))
(add-hook 'web-mode-hook #'lsp)
(add-hook 'web-mode-hook (lambda () (auto-complete-mode -1)))
(add-hook 'typescript-mode-hook #'lsp)
(add-hook 'typescript-mode-hook (lambda () (auto-complete-mode -1)))

(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

;; turn on git gutter+
(global-git-gutter+-mode t)

;; turn on rainbow delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(defun vim-new-line-below ()
  "o like functionality from vim, really helpful in org-mode"
  (interactive)
  (end-of-line)
  (newline-and-indent))

;; o like functionality from vim, really helpful in org-mode
(global-set-key (kbd "C-o") 'vim-new-line-below)

;; enable mouse input on the terminal
(xterm-mouse-mode t)

(global-set-key (kbd "C-x C-m") 'compile)

;; slime config
(setf inferior-lisp-program "/usr/local/bin/sbcl")
(setf slime-contribs '(slime-fancy slime-asdf slime-banner))

;; show trailing whitespace
(setq show-trailing-whitespace t)

;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)

(setf proof-auto-raise-buffers t)

(provide 'samontea-coding)
