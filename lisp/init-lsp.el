(add-to-list 'load-path "/home/steiner/workspace/lsp-bridge")

(require 'yasnippet)
(require 'lsp-bridge)
(require 'lsp-bridge-jdtls)

(setq lsp-bridge-default-mode-hooks
      (remove 'org-mode-hook lsp-bridge-default-mode-hooks))
(yas-global-mode 1)
(global-lsp-bridge-mode)
(provide 'init-lsp)

