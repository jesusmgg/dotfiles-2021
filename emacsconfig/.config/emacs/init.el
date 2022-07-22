; -*- lexical-binding: t -*-

(add-to-list 'load-path "~/.config/emacs/lisp")
(add-to-list 'load-path "~/.config/emacs/init.d")
(setq lexical-binding 1)

(require 'my-packages)
(require 'my-evil-mode)
(require 'my-company)
(use-package flycheck :ensure)
(require 'my-rust)
(require 'my-git)
(require 'my-treemacs)
(require 'my-visual-settings)
(require 'my-org-mode)


;; Keybindings
(global-set-key (kbd "C-x w c") 'visual-fill-column-mode)
(global-set-key (kbd "C-x w l") 'visual-line-mode)
