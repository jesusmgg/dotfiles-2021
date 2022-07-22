(provide 'my-org-mode)

;; Packages
(unless (package-installed-p 'org-appear)
  (package-install 'org-appear))
(unless (package-installed-p 'org-superstar)
  (package-install 'org-superstar))

(require 'org-appear)
(require 'org-superstar)


;; Settings
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
