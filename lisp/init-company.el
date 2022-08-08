(use-package company
  :ensure t
  :hook ((julia-mode scheme-mode) . company-mode)
  :config
  (setq company-echo-delay 0.5
	company-idel-delay 0.2))

;; (add-hook 'after-init-hook 'global-company-mode)
(provide 'init-company)