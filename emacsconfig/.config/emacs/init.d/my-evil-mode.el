(provide 'my-evil-mode)

;; Packages
(unless (package-installed-p 'evil)
  (package-install 'evil))

(unless (package-installed-p 'undo-tree)
  (package-install 'undo-tree))

(unless (package-installed-p 'evil-collection)
  (package-install 'evil-collection))


;; Evil
(setq evil-want-integration t)
(setq evil-want-keybinding nil)
(setq evil-want-C-i-jump t)
(require 'evil)
(evil-mode t)


;; Undo-tree
(require 'undo-tree)
(evil-set-undo-system 'undo-tree)
(global-undo-tree-mode t)


;; Evil collection
(require 'evil-collection)
(evil-collection-init)
