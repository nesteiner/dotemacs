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


(provide 'init-program)