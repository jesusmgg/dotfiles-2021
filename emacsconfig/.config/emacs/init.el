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

