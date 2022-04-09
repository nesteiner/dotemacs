(use-package lsp-mode
  :hook
  ((c++-mode python-mode clojure-mode typescript-mode web-mode julia-mode) . lsp)
  :config
  (setq lsp-enable-snippet nil
	lsp-eslint-enable nil
	lsp-idle-delay 0.8
	;; STUB add some config, risky
	lsp-log-io nil
	lsp-enable-symbol-highlighting t
	lsp-restart 'auto-restart
	lsp-file-watch-threshold 1000
	)
  (add-to-list 'lsp-file-watch-ignored-directories "node_modules/")
  :commands lsp)

;; (use-package lsp-dart
;;   :ensure t
;;   :hook (dart-mode . lsp)
;;   :config
;;   (setq lsp-dart-flutter-sdk-dir "~/disk/disk1/flutter/"
;;   	lsp-dart-sdk-dir "~/disk/disk1/flutter/bin/cache/dart-sdk"))


(use-package lsp-ivy
  :ensure t
  :commands lsp-ivy-workspace-symbol)

;; (use-package dap-mode
;;   :ensure t
;;   :hook
;;   ((c++-mode python-mode clojure-mode) . dap-mode))


(use-package lsp-julia
  :after treemacs
  :config
  (setq lsp-julia-default-environment "~/.julia/environments/v1.6"))

(use-package lsp-volar)

(provide 'init-lsp)