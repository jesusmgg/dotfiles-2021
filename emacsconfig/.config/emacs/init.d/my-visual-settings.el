(provide 'my-visual-settings)


;; Packages
(unless (package-installed-p 'visual-fill-column)
  (package-install 'visual-fill-column))

(unless (package-installed-p 'adaptive-wrap)
  (package-install 'adaptive-wrap))

(unless (package-installed-p 'mixed-pitch)
  (package-install 'mixed-pitch))

(unless (package-installed-p 'vs-dark-theme)
  (package-install 'vs-dark-theme))


;; Settings
(require 'visual-fill-column)
(require 'adaptive-wrap)
(require 'mixed-pitch)
(require 'vs-dark-theme)

(add-hook 'text-mode-hook #'mixed-pitch-mode)
(desktop-save-mode 0)


;; Theme
(load-theme 'vs-dark t)


;; Font
(defun set-font-settings ()
  (interactive)
      (setq mono-font
        (cond ((eq system-type 'windows-nt) "Consolas-10")
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
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;(setq tab-stop-list (number-sequence 2 80 2))
;(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)


;; Formatting
(electric-pair-mode t)


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
(display-time-mode t)
