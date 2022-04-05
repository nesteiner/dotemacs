(use-package julia-mode
  :hook (julia-mode . julia-snail-mode)
  :config
  (setq julia-repl-switches nil
	julia-snail-extra-args nil
	julia-indent-offset 2)
  (setq-default julia-snail-extra-args "--sysimage /home/steiner/.julia-images/julia-dev.so")
  :commands julia-snail-mode)


;; (use-package julia-snail
;;   :ensure t
;;   :after julia-mode
;;   :requires vterm
;;   :config
;;   (setq-default julia-snail-extra-args "--sysimage /home/steiner/.julia-images/julia-dev.so")
;;   (setq julia-snail-executable "/usr/local/bin/julia"))

(provide 'init-julia)