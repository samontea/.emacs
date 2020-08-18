(setf package-archive-priorities
      '(("melpa" . 20)
        ("gnu" . 10)
        ("melpa-stable" . 0)))

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
                         lsp-mode
                         lsp-ui
                         ccls
                         company-lsp
                         flx-ido
;;                         ggtags
                         goto-line-preview
                         boogie-friends
                         rainbow-delimiters
                         proof-general
                         minimap
                         company-coq
                         scala-mode
                         sbt-mode
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
