; -*- lexical-binding: t -*-

(add-to-list 'load-path "~/.config/emacs/lisp")
(add-to-list 'load-path "~/.config/emacs/init.d")
(setq lexical-binding 1)

(require 'my-packages)
(require 'my-evil-mode)
(require 'my-company)
(use-package flycheck :ensure)
(require 'my-fzf)
(require 'my-rust)
(require 'my-lisp)
(require 'my-git)
(require 'my-treemacs)
(require 'my-visual-settings)
(require 'my-org-mode)
(require 'my-minions)


;; Keybindings
(defvar my-keys-minor-mode-map
  (let ((map (make-sparse-keymap)))
    (global-set-key (kbd "C-x w c") 'visual-fill-column-mode)
    (global-set-key (kbd "C-x w l") 'visual-line-mode)
    (global-set-key (kbd "M-C-l") 'indent-region)
    (define-key map (kbd "C-;") 'comment-line)
    (global-set-key (kbd "S-<f6>") 'lsp-rename)
    (global-set-key (kbd "C-S-<f5>") (lambda () (interactive) (find-file "~/.config/emacs/init.el")))
    (global-set-key (kbd "C-<f5>") (lambda () (interactive) (find-file "~/org/index.org")))
    (define-key map (kbd "C-S-s") 'fzf-git-grep)
    (define-key map (kbd "C-S-f") 'fzf-git-files)
    map)
  "my-keys-minor-mode keymap.")

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  :init-value t
  :lighter " my-keys")

(my-keys-minor-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(all-the-icons doom-modeline minions yasnippet vs-dark-theme visual-fill-column use-package undo-tree treemacs-magit treemacs-evil rustic paredit org-superstar org-appear on-screen mixed-pitch lsp-ui good-scroll geiser-stklos fzf flycheck evil-collection company-posframe affe adaptive-wrap)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
