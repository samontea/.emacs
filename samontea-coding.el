(projectile-global-mode)

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))

(global-git-gutter+-mode t)

(defun vim-new-line-below ()
  "o like functionality from vim, really helpful in org-mode"
  (interactive)
  (end-of-line)
  (newline-and-indent))

;; o like functionality from vim, really helpful in org-mode
(global-set-key (kbd "C-o") 'vim-new-line-below)

(provide 'samontea-coding)
