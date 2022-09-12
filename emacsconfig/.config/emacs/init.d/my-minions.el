(provide 'my-minions)

;; Packages
(unless (package-installed-p 'minions)
  (package-install 'minions))


;; Settings
(require 'minions)
(setq minions-mode 1)
