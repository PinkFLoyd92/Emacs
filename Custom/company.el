
(use-package company-prescient
  :after company
  :config
  (company-prescient-mode 1)
  )

(use-package company
  :after yasnippet
  :config (progn (global-company-mode 1)
             (setq company-idle-delay 0.1)
             (setq company-show-numbers t)
             (setq company-minimum-prefix-length 2)
             (setq company-dabbrev-downcase nil)
             (setq company-dabbrev-other-buffers t)
                             (setq company-auto-complete nil)
             (setq company-dabbrev-code-other-buffers 'all)
             (setq company-dabbrev-code-everywhere t)
             (setq company-dabbrev-code-ignore-case t)
             (global-set-key (kbd "C-<tab>") 'company-dabbrev)
             (global-set-key (kbd "M-<tab>") 'company-complete)
             (global-set-key (kbd "C-c C-y") 'company-yasnippet)))

(provide 'init-company)
