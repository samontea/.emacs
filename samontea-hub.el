(require 'samontea-mode-line-configuration)
;; (require 'samontea-keybindings-configuration)
;; (require 'samontea-graphical-interface-configuration)
;; (require 'samontea-scratch-buffer-configuration)
;; (require 'samontea-theme-configuration)
;; (require 'samontea-coding-etc-config)

(defun samontea-hub-unload-function ()
  (unload-feature 'samontea-mode-line-configuration 'force))

(provide 'samontea-hub)
