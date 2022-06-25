; -*- lexical-binding: t -*-

(add-to-list 'load-path "~/.config/emacs/lisp")
(setq lexical-binding 1)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
; (package-refresh-contents)

;; Evil mode
(unless (package-installed-p 'evil)
  (package-install 'evil))
(setq evil-want-keybinding nil)
(require 'evil)
(evil-mode t)

;; Undo tree
(unless (package-installed-p 'undo-tree)
  (package-install 'undo-tree))
(require 'undo-tree)
(evil-set-undo-system 'undo-tree)
(global-undo-tree-mode t)

;; Company mode
(unless (package-installed-p 'company)
  (package-install 'company))
(require 'company)
(company-mode t)

;; Magit
(unless (package-installed-p 'magit)
  (package-install 'magit))
(require 'magit)

;; Treemacs
(unless (package-installed-p 'treemacs)
  (package-install 'treemacs))
(require 'treemacs)
(unless (package-installed-p 'treemacs-evil)
  (package-install 'treemacs-evil))
(require 'treemacs-evil)
(unless (package-installed-p 'treemacs-magit)
  (package-install 'treemacs-magit))
(require 'treemacs-magit)
(treemacs-git-mode 'deferred)
(treemacs-filewatch-mode 1)
(global-set-key (kbd "C-x t 1") 'treemacs-delete-other-windows)
(global-set-key (kbd "C-1") 'treemacs-select-window)
(global-set-key (kbd "C-x t t") 'treemacs)
(global-set-key (kbd "C-x t d") 'treemacs-select-directory)

;; evil collection
(unless (package-installed-p 'evil-collection)
  (package-install 'evil-collection))
(require 'evil-collection)
(evil-collection-init)

;; visual-fill-column
(unless (package-installed-p 'visual-fill-column)
  (package-install 'visual-fill-column))
(require 'visual-fill-column)

;; Adaptive wrap
(unless (package-installed-p 'adaptive-wrap)
  (package-install 'adaptive-wrap))
(require 'adaptive-wrap)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(adaptive-wrap visual-fill-column treemacs-magit magit on-screen good-scroll evil))
 '(safe-local-variable-values
   '((visual-line-fringe-indicators)
     (org-startup-with-inline-images . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Font
;(w32-find-non-USB-fonts)
(setq preferred-font
  (cond ((eq system-type 'windows-nt) "Comic Mono-10")
	((eq system-type 'gnu/linux) "Comic Shanns Mono-10:width=regular")
        (t nil)))
(when preferred-font
  (add-to-list 'default-frame-alist `(font . ,preferred-font))
  (set-frame-font preferred-font nil t)
)
(setq-default line-spacing 0.45)

;; UI
(setq scroll-conservatively 10000)
(global-hl-line-mode 1)
(set-face-background hl-line-face "gray9")
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq frame-title-format "%b")
(setq-default org-startup-with-inline-images t)
(setq-default visual-line-fringe-indicators nil)
(setq-default fill-column 120)

(desktop-save-mode 1)

;; Extra keybindings
(global-set-key (kbd "C-x w c") 'visual-fill-column-mode)
(global-set-key (kbd "C-x w l") 'visual-line-mode)
