(provide 'my-lisp)

;; Packages
(unless (package-installed-p 'geiser-stklos)
  (package-install 'geiser-stklos))

(unless (package-installed-p 'paredit)
  (package-install 'paredit))


;; Settings
(require 'geiser)
(require 'geiser-stklos)
(require 'paredit)

(setq-default geiser-active-implementations '(stklos))


(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
