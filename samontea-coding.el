;; enalbe projectile globaly
(projectile-global-mode)

;; setup company
(require 'company-lsp)
(push 'company-lsp company-backends)

(add-hook 'after-init-hook 'global-company-mode)

(require 'ccls)
(setq ccls-executable "/home/samuel/ccls-0.20190314.1/Release/ccls")
(add-hook 'c++-mode-hook #'lsp)
(add-hook 'c++-mode-hook (lambda () (auto-complete-mode -1)))
(add-hook 'scala-mode-hook #'lsp)
(add-hook 'scala-mode-hook (lambda () (auto-complete-mode -1)))

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

;; enable proof general
(require 'proof-site)
;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)

(setf proof-auto-raise-buffers t)

(provide 'samontea-coding)
