(require 'samontea-mode-line)
;; (require 'samontea-keybindings-configuration)
;; (require 'samontea-graphical-interface-configuration)
;; (require 'samontea-scratch-buffer-configuration)
;; (require 'samontea-theme-configuration)
;; (require 'samontea-coding-etc-config)

(defun samontea-hub-unload-function ()
  (unload-feature 'samontea-mode-line 'force))

(provide 'samontea-hub)
