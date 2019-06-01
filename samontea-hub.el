(kotct/personal-packages git-gutter-fringe+
                         slime
                         cyberpunk-theme
                         dracula-theme
                         doom-themes
                         monokai-theme
                         sublime-themes
                         twilight-anti-bright-theme
                         projectile
                         ace-window
                         flx-ido
                         ggtags
                         goto-line-preview
                         rainbow-delimiters
                         minimap
                         jazz-theme)

(require 'samontea-coding)
(require 'samontea-gui)
(require 'samontea-keybindings)
(require 'samontea-mode-line)
(require 'samontea-scratch)
(require 'samontea-themes)
(require 'samontea-org)

(defun samontea-hub-unload-function ()
  (unload-feature 'samontea-coding 'force)
  (unload-feature 'samontea-gui 'force)
  (unload-feature 'samontea-keybindings 'force)
  (unload-feature 'samontea-mode-line 'force)
  (unload-feature 'samontea-scratch 'force)
  (unload-feature 'samontea-themes 'force))

(provide 'samontea-hub)
