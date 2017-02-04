(global-git-gutter+-mode t)

(defun vim-new-line-below ()
  "o like functionality from vim, really helpful in org-mode"
  (interactive)
  (end-of-line)
  (newline-and-indent))

;; o like functionality from vim, really helpful in org-mode
(global-set-key (kbd "C-o") 'vim-new-line-below)

(provide 'samontea-coding)
