(provide 'my-treemacs)

;; Packages
(unless (package-installed-p 'treemacs)
  (package-install 'treemacs))
(unless (package-installed-p 'treemacs-evil)
  (package-install 'treemacs-evil))
(unless (package-installed-p 'treemacs-magit)
  (package-install 'treemacs-magit))


;; Settings
(require 'treemacs)
(require 'treemacs-evil)
(require 'treemacs-magit)
(treemacs-git-mode 'deferred)
(treemacs-filewatch-mode 1)


;; Keybindings
(global-set-key (kbd "C-x t 1") 'treemacs-delete-other-windows)
(global-set-key (kbd "C-1") 'treemacs-select-window)
(global-set-key (kbd "M-1") 'treemacs-select-window)
(global-set-key (kbd "C-x t t") 'treemacs)
(global-set-key (kbd "C-x t d") 'treemacs-select-directory)
