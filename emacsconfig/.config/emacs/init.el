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
(unless (package-installed-p 'company-posframe)
  (package-install 'company-posframe))
(require 'company-posframe)
(company-posframe-mode 1)

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

;; Mixed pitch
(unless (package-installed-p 'mixed-pitch)
  (package-install 'mixed-pitch))
(require 'mixed-pitch)
(add-hook 'text-mode-hook #'mixed-pitch-mode)

;; Org-appear
(unless (package-installed-p 'org-appear)
  (package-install 'org-appear))
(require 'org-appear)

;; org-superstar
(unless (package-installed-p 'org-superstar)
  (package-install 'org-superstar))
(require 'org-superstar)

;; Themes
(unless (package-installed-p 'vs-dark-theme)
  (package-install 'vs-dark-theme))
(require 'vs-dark-theme)
(load-theme 'vs-dark t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("1118168d8232a6391f2ef355f64e1121acfd1269ff46bca614b4cff4c383370d" default))
 '(package-selected-packages
   '(org-appear mixed-pitch vs-dark-theme adaptive-wrap visual-fill-column treemacs-magit magit on-screen good-scroll evil))
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
(defun set-font-settings ()
  (interactive)
      (setq mono-font
        (cond ((eq system-type 'windows-nt) "Comic Mono-10")
              ((eq system-type 'gnu/linux) "Comic Shanns Mono-10:width=regular")
              (t nil)
        )
      )
      (when mono-font
        (set-face-attribute 'default nil :font mono-font)
        (set-face-attribute 'fixed-pitch nil :font mono-font)
      )
      (setq mixed-pitch-set-height t)
      (set-face-attribute 'variable-pitch nil :font "Lato-12")
      (set-face-attribute 'variable-pitch nil :height 1.2)
      (setq-default line-spacing 0.45)
)
(add-hook 'after-init-hook 'set-font-settings)
(add-hook 'server-after-make-frame-hook 'set-font-settings)

;; Indentation
(setq indent-tabs-mode nil)
(setq tab-width 2)
(setq tab-stop-list (number-sequence 2 80 2))
(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)

;; UI
(setq scroll-conservatively 10000)
(global-hl-line-mode 1)
;(set-face-background hl-line-face "gray9")
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq visible-bell 1)
(setq frame-title-format "%b")
(setq-default visual-line-fringe-indicators nil)
(setq-default fill-column 120)
(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 200))

(desktop-save-mode 1)

;; Org-mode
(setq org-directory "~/org/"
      org-startup-indented t
      org-pretty-entities t
      org-hide-emphasis-markers t
      org-startup-with-inline-images t
      org-image-actual-width '(300)
      org-return-follows-link t
)
(setq org-src-preserve-indentation nil
      org-src-tab-acts-natively t
      org-edit-src-content-indentation 0
)
(add-hook 'org-mode-hook 'org-appear-mode)
(setq org-superstar-special-todo-items t)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
(add-hook 'org-mode-hook 'org-mode-extra-settings)

(defun org-mode-extra-settings ()
  (interactive)
  (let* ((variable-tuple
          (cond ((x-list-fonts "Lato")	          '(:font "Lato"))
                ((x-list-fonts "Verdana")         '(:font "Verdana"))
                ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
                (nil (warn "Cannot find a Sans Serif Font."))))
         (base-font-color     (face-foreground 'default nil 'default))
         (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

    (custom-theme-set-faces
     'user
     `(org-level-8 ((t (,@headline ,@variable-tuple :height 1.2))))
     `(org-level-7 ((t (,@headline ,@variable-tuple :height 1.2))))
     `(org-level-6 ((t (,@headline ,@variable-tuple :height 1.2))))
     `(org-level-5 ((t (,@headline ,@variable-tuple :height 1.2))))
     `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.25))))
     `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.35))))
     `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
     `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
     `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))))
)

;; Keybindings
(global-set-key (kbd "C-x w c") 'visual-fill-column-mode)
(global-set-key (kbd "C-x w l") 'visual-line-mode)


