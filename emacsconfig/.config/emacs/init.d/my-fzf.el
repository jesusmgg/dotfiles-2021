(provide 'my-fzf)

;; Package
(unless (package-installed-p 'fzf)
  (package-install 'fzf))


;; Settings
(require 'fzf)
(setq fzf/args "-x --color bw --print-query --margin=1,0 --no-hscroll")
(setq fzf/executable "fzf")
(setq fzf/git-grep-args "-i --line-number %s")
(setq fzf/grep-command "grep -nrH")
(setq fzf/position-bottom t)
(setq fzf/window-height 15)
