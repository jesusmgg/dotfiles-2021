(provide 'my-git)

;; Magit
(unless (package-installed-p 'magit)
  (package-install 'magit))

(require 'magit)
