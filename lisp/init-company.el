(use-package company
  :ensure t
  :hook (after-init . global-company-mode)
  :config
  (setq company-echo-delay 0.5
	company-idel-delay 0.2
	global-company-mode t))
;; (add-hook 'after-init-hook 'global-company-mode)
(provide 'init-company)