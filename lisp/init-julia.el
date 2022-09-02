(use-package julia-mode
  :hook (julia-mode . julia-snail-mode)
  :config
  (setq julia-repl-switches nil
	julia-snail-extra-args nil
	julia-indent-offset 2)

  (setenv "JULIA_PKG_SERVER" "https://mirrors.tuna.tsinghua.edu.cn/julia")
  (setq-default julia-snail-extra-args "--sysimage /home/steiner/.julia/images/julia-dev.so --threads 5")
  (setq-default	julia-snail-executable "/home/steiner/.local/bin/julia")
  (setq lsp-julia-flags `("-J /home/steiner/.julia/images/language-server.so"))
  (use-package lsp-julia
    :config
    (setq lsp-julia-default-environment "/home/steiner/.julia/environments/v1.7"))
  (add-hook 'ess-julia-mode-hook #'lsp-mode)

  :commands julia-snail-mode)

(use-package lsp-mode
  :ensure t
  :hook (julia-mode . lsp-mode))


(provide 'init-julia)
