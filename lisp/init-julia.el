(use-package julia-snail
  :ensure t
  :requires vterm
  :hook (julia-mode . julia-snail-mode))

(provide 'init-julia)