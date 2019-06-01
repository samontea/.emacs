;; More natural movement between splits
(global-set-key (kbd "C-S-k") 'windmove-up)
(global-set-key (kbd "C-S-j") 'windmove-down)
(global-set-key (kbd "C-S-h") 'windmove-left)
(global-set-key (kbd "C-S-l") 'windmove-right)

;; For natural movement between splits in terminals
(global-set-key (kbd "C-x M-k") 'windmove-up)
(global-set-key (kbd "C-x M-j") 'windmove-down)
(global-set-key (kbd "C-x M-h") 'windmove-left)
(global-set-key (kbd "C-x M-l") 'windmove-right)

;; Ace Window
(global-set-key (kbd "M-o") 'ace-window)
;; Set ace window keys to home row
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; Goto line w/ previews
(global-set-key (kbd "M-g M-g") 'goto-line-preview)

(defvar kotct/darwin-swap-command-option
  nil)

(provide 'samontea-keybindings)
