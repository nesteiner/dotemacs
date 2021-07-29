(provide 'init-program)
;; support for program language and tools

;; MODULE scheme and geiser
(use-package geiser
  :defer t
  :hook (scheme-mode . geiser-mode)
  :init
  (setenv "MITSCHEME_LIBRARY_PATH"
	  "/usr/bin/chezscheme9.5")
  (add-to-list 'exec-path "/usr/bin/chezscheme9.5")
  (setq scheme-program-name "chezscheme9.5"
	geiser-chez-binary "chezscheme9.5"
	geiser-active-implementations '(chez)))



;; MODULE Julia
(use-package julia-mode
  :defer t
  :config
  (setq julia-repl-switches nil
	julia-snail-extra-args nil
	julia-indent-offset 2)
  :commands julia-snail-mode)
(use-package lsp-julia
  :config
  (setq lsp-julia-default-environment "~/.julia/environments/v1.5"))

;; MODULE c++-mode
(use-package c++-mode
  :mode "\\.cc\\'")

(use-package web-mode
  :ensure t
  :mode ("\\.html\\'" "\\.css\\'" "\\.js\\'" "\\.vue\\'" "\\.jsp\\'")
  :custom
  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2))

;; MODULE Typescript mode

;; MODULE for compile programe
(use-package antlr-mode
  :mode "\\.g4\\'")


;; MODULE auto complete
;; (use-package company
;;   :hook
;;   ((c++-mode python-mode clojure-mode web-mode julia-mode) . company-mode)
;;   :config
;;   (setq company-backends '(company-capf company-files company-keywords company-tide company-web-html company-css)
;; 	company-idle-delay 0.1
;; 	company-echo-delay 0.1)
;;   :commands company-mode)

;; (use-package lsp-mode
;;   :hook
;;   ((c++-mode python-mode clojure-mode typescript-mode web-mode julia-mode) . lsp)
;;   :config
;;   (setq lsp-enable-snippet nil
;; 	lsp-eslint-enable nil
;; 	lsp-idle-delay 0.500
;; 	;; STUB add some config, risky
;; 	lsp-log-io nil
;; 	lsp-enable-symbol-highlighting t
;; 	lsp-restart 'auto-restart
;; 	lsp-file-watch-threshold 1000
;; )
;;   (add-to-list 'lsp-file-watch-ignored-directories "node_modules/")
;;   :commands lsp)



;; (use-package lsp-ivy
;;   :ensure t
;;   :commands lsp-ivy-workspace-symbol)

;; (use-package dap-mode
;;   :ensure t
;;   :hook
;;   ((c++-mode python-mode clojure-mode) . dap-mode))



