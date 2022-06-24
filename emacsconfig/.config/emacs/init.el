(add-to-list 'load-path "~/.config/emacs/")
(setq lexical-binding 1)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; Evil mode
(unless (package-installed-p 'evil)
  (package-install 'evil))
(require 'evil)
(evil-mode 1)

;; Undo tree
(unless (package-installed-p 'undo-tree)
  (package-install 'undo-tree))
(require 'undo-tree)
(evil-set-undo-system 'undo-tree)
(global-undo-tree-mode 1)

;; Company mode
(unless (package-installed-p 'company)
  (package-install 'company))
(require 'company)
(company-mode 1)

;; Treemacs
(unless (package-installed-p 'treemacs)
  (package-install 'treemacs))
(require 'treemacs)
(unless (package-installed-p 'treemacs-evil)
  (package-install 'treemacs-evil))
(require 'treemacs-evil)
(global-set-key (kbd "C-1") 'treemacs-select-window)
(global-set-key (kbd "C-x t 1") 'treemacs-delete-other-windows)
(global-set-key (kbd "C-x t t") 'treemacs)
(global-set-key (kbd "C-x t d") 'treemacs-select-directory)
(with-eval-after-load 'treemacs)

;; Magit
(unless (package-installed-p 'magit)
  (package-install 'magit))
(require 'magit)

;; evil collection
(unless (package-installed-p 'evil-collection)
  (package-install 'evil-collection))
(require 'evil-collection)
(evil-collection-init)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit on-screen good-scroll evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Font
(add-to-list 'default-frame-alist
	     '(font . "Comic Shanns Mono-10:width=regular"))
(setq-default line-spacing 0.45)

;; UI
(setq scroll-conservatively 10000)
(global-hl-line-mode 1)
(set-face-background hl-line-face "gray9")
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq frame-title-format "%b")

(desktop-save-mode 1)
