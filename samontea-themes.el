(setf theme-list '(cyberpunk
                   dracula
                   monokai
                   wombat
                   wilson
                   twilight-anti-bright
                   jazz))

(defun samontea/switch-theme (&optional theme)
  "Switch to THEME, if THEME is nil select random theme from `theme-list'"
  (interactive)
  (unless theme (setf theme (nth (random (length theme-list)) theme-list)))
  (kotct/switch-to-theme theme))

;;; set random theme on start
(samontea/switch-theme)

(provide 'samontea-themes)
