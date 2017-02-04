(defun samontea/configure-mode-line ()
  "Set mode-line-format to a custom value."
    (setq-default mode-line-format
                  '("%e"
                    mode-line-mule-info
                    mode-line-client
                    "<%*%+>"
                    "%@"
                    mode-line-frame-identification
                    (#("%16b" 0 4 (local-map mode-line-highlight face mode-line-buffer-id)))
                    " "
                    "(%l,%c)"
                    " "
                    (vc-mode vc-mode)
                    " "
                    mode-line-misc-info)))

;; Enable the mode line config
(samontea/configure-mode-line)

;; Modeline battery notifier config & enabling
(setf battery-mode-line-format "[%b%p%%, %t] ")
(display-battery-mode)

;; Modeline clock config & enabling
(setf display-time-format "{%Y-%m-%d, %H:%M}")
(setf display-time-default-load-average nil)
(display-time-mode)

(provide 'samontea-mode-line)
