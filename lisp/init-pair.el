(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package elec-pair 
  :ensure nil
  :hook (after-init . electric-pair-mode)
  :init (setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit))

;; (add-to-list 'load-path "/home/steiner/workspace/repo/awesome-pair")
;; (require 'awesome-pair)

;; (add-hook #'prog-mode-hook '(lambda () (awesome-pair-mode 1)))
;; (define-key awesome-pair-mode-map (kbd "(") 'awesome-pair-open-round)
;; (define-key awesome-pair-mode-map (kbd "[") 'awesome-pair-open-bracket)
;; (define-key awesome-pair-mode-map (kbd "{") 'awesome-pair-open-curly)
;; (define-key awesome-pair-mode-map (kbd ")") 'awesome-pair-close-round)
;; (define-key awesome-pair-mode-map (kbd "]") 'awesome-pair-close-bracket)
;; (define-key awesome-pair-mode-map (kbd "}") 'awesome-pair-close-curly)
;; (define-key awesome-pair-mode-map (kbd "=") 'awesome-pair-equal)

;; (define-key awesome-pair-mode-map (kbd "%") 'awesome-pair-match-paren)
;; (define-key awesome-pair-mode-map (kbd "\"") 'awesome-pair-double-quote)

;; (define-key awesome-pair-mode-map (kbd "SPC") 'awesome-pair-space)

;; ;; (define-key awesome-pair-mode-map (kbd "M-o") 'awesome-pair-backward-delete)
;; (define-key awesome-pair-mode-map (kbd "C-d") 'awesome-pair-forward-delete)
;; (define-key awesome-pair-mode-map (kbd "RET") 'awesome-pair-newline)
;; (define-key awesome-pair-mode-map (kbd "C-k") 'awesome-pair-kill)

;; (define-key awesome-pair-mode-map (kbd "M-\"") 'awesome-pair-wrap-double-quote)
;; (define-key awesome-pair-mode-map (kbd "M-[") 'awesome-pair-wrap-bracket)
;; (define-key awesome-pair-mode-map (kbd "M-{") 'awesome-pair-wrap-curly)
;; (define-key awesome-pair-mode-map (kbd "M-(") 'awesome-pair-wrap-round)
;; (define-key awesome-pair-mode-map (kbd "M-)") 'awesome-pair-unwrap)

;; (define-key awesome-pair-mode-map (kbd "M-n") 'awesome-pair-jump-right)
;; (define-key awesome-pair-mode-map (kbd "M-p") 'awesome-pair-jump-left)

;; (define-key awesome-pair-mode-map (kbd "M-:") 'awesome-pair-jump-out-pair-and-newline)



(provide 'init-pair)

