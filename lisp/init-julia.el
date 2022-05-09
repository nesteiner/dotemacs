(use-package julia-mode
  :hook (julia-mode . julia-snail-mode)
  :config
  (setq julia-repl-switches nil
	julia-snail-extra-args nil
	julia-indent-offset 2
	julia-snail-executable "/home/steiner/.local/bin/julia")
  (setenv "JULIA_PKG_SERVER" "https://mirrors.tuna.tsinghua.edu.cn/julia")
  (setq-default julia-snail-extra-args "--sysimage /home/steiner/.julia/images/julia-dev.so")
  :commands julia-snail-mode)

(provide 'init-julia)