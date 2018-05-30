;; enalbe projectile globaly
(projectile-global-mode)

;; enable ggtags for c-mode, c++-mode, and java-mode
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))

;; turn on git gutter+
(global-git-gutter+-mode t)

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

(provide 'samontea-coding)
