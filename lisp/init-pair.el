;; (use-package paredit
;;   :ensure nil
;;   :config
;;   (add-hook 'prog-mode-hook #'enable-paredit-mode))
;; does not work
(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

;; MODULE use electric-pair
(electric-pair-mode 1)

;; try using awesome pair
;; (use-package awesome-pair
;;   :load-path "~/workspace/repo/awesome-pair/"
;;   ;; :hook (prog-mode . awesome-pair-mode)
;;   :hook ((python-mode c++-mode c-mode js-mode typescript-mode dart-mode org-mode) . awesome-pair-mode)
;;   :bind (:map awesome-pair-mode-map
;; 	      ("(" . awesome-pair-open-round)
;; 	      ("[" . awesome-pair-open-bracket)
;; 	      ("{" . awesome-pair-open-curly)
;; 	      (")" . awesome-pair-close-round)
;; 	      ("]" . awesome-pair-close-bracket)
;; 	      ("}" . awesome-pair-close-curly)))


(provide 'init-pair)
