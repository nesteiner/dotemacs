;; (use-package lsp-mode
;;   :hook
;;   ((c++-mode python-mode clojure-mode typescript-mode web-mode julia-mode) . lsp)
;;   :config
;;   (setq lsp-enable-snippet nil
;; 	lsp-eslint-enable nil
;; 	lsp-idle-delay 0.8
;; 	;; STUB add some config, risky
;; 	lsp-log-io nil
;; 	lsp-enable-symbol-highlighting t
;; 	lsp-restart 'auto-restart
;; 	lsp-file-watch-threshold 1000
;; 	)
;;   (add-to-list 'lsp-file-watch-ignored-directories "node_modules/")
;;   :commands lsp)

;; ;; (use-package lsp-dart
;; ;;   :ensure t
;; ;;   :hook (dart-mode . lsp)
;; ;;   :config
;; ;;   (setq lsp-dart-flutter-sdk-dir "~/disk/disk1/flutter/"
;; ;;   	lsp-dart-sdk-dir "~/disk/disk1/flutter/bin/cache/dart-sdk"))


;; (use-package lsp-ivy
;;   :ensure t
;;   :commands lsp-ivy-workspace-symbol)

;; ;; (use-package dap-mode
;; ;;   :ensure t
;; ;;   :hook
;; ;;   ((c++-mode python-mode clojure-mode) . dap-mode))


;; (use-package lsp-julia
;;   :after treemacs
;;   :config
;;   (setq lsp-julia-default-environment "~/.julia/environments/v1.6"))

;; (use-package lsp-volar)

(add-to-list 'load-path "/home/steiner/workspace/lsp-bridge")
(add-to-list 'load-path "/home/steiner/workspace/tabnine-capf")
(require 'yasnippet)
(require 'lsp-bridge)             ;; load lsp-bridge
(require 'lsp-bridge-orderless)   ;; make lsp-bridge support fuzzy match, optional
(require 'lsp-bridge-jdtls)       ;; provide Java third-party library jump and -data directory support, optional
(yas-global-mode 1)

(setq lsp-bridge-completion-provider 'corfu)
(require 'corfu)
(require 'corfu-info)
(require 'corfu-history)
(require 'lsp-bridge-icon)        ;; show icons for completion items, optional
(global-corfu-mode)               ;; use corfu as completion ui
(corfu-history-mode t)
(global-lsp-bridge-mode)
(when (> (frame-pixel-width) 3000) (custom-set-faces '(corfu-default ((t (:height 1.3))))))
(setq lsp-bridge-enable-auto-import t)
;; (dolist (hook (list
;;                'c-mode-hook
;;                'c++-mode-hook
;;                'java-mode-hook
;;                'python-mode-hook
;;                'ruby-mode-hook
;;                'rust-mode-hook
;;                'elixir-mode-hook
;;                'go-mode-hook
;;                'haskell-mode-hook
;;                'haskell-literate-mode-hook
;;                'dart-mode-hook
;;                'scala-mode-hook
;;                'typescript-mode-hook
;;                'typescript-tsx-mode-hook
;;                'js2-mode-hook
;;                'js-mode-hook
;;                'rjsx-mode-hook
;;                'tuareg-mode-hook
;;                'latex-mode-hook
;;                'Tex-latex-mode-hook
;;                'texmode-hook
;;                'context-mode-hook
;;                'texinfo-mode-hook
;;                'bibtex-mode-hook
;;                'clojure-mode-hook
;;                'clojurec-mode-hook
;;                'clojurescript-mode-hook
;;                'clojurex-mode-hook
;;                'sh-mode-hook
;;                'web-mode-hook
;;                ))
;;   (add-hook hook (lambda ()
;;                    (setq-local corfu-auto nil)  ;; let lsp-bridge control when popup completion frame
;;                    (lsp-bridge-mode 1)
;;                    )))

;; (require 'lsp-bridge-ui)
;; (require 'lsp-bridge-ui-history)
;; (require 'cape)
;; (require 'lsp-bridge)
;; (require 'lsp-bridge-orderless) ;; make lsp-bridge support fuzzy match, optional
;; (require 'lsp-bridge-jdtls)
;; (require 'tabnine-capf)

;; ;;; Code:

;; ;; 修改Lsp-Bridge-Ui默认按键
;; (define-key lsp-bridge-ui-map "M-h" #'lsp-bridge-ui-insert)
;; (define-key lsp-bridge-ui-map "M-H" #'lsp-bridge-insert-common-prefix)
;; (define-key lsp-bridge-ui-map "M-." #'lsp-bridge-ui-first)
;; (define-key lsp-bridge-ui-map "M-," #'lsp-bridge-ui-last)
;; ;; 打开日志，开发者才需要
;; ;; (setq lsp-bridge-enable-log t)

;; ;; 默认用这三个补全后端
;; (add-to-list 'completion-at-point-functions #'cape-symbol)
;; (add-to-list 'completion-at-point-functions #'cape-file)
;; (add-to-list 'completion-at-point-functions #'cape-dabbrev)

;; (dolist (hook (list
;;                'emacs-lisp-mode-hook
;;                ))
;;   (add-hook hook (lambda ()
;;                    (setq-local lsp-bridge-ui-auto t) ; Elisp文件自动弹出补全
;;                    )))

;; ;; 通过Cape融合不同的补全后端，比如lsp-bridge、 tabnine、 file、 dabbrev.
;; (defun lsp-bridge-mix-multi-backends ()
;;   (setq-local completion-category-defaults nil)
;;   (setq-local completion-at-point-functions
;;               (list
;;                (cape-capf-buster
;;                 (cape-super-capf
;;                  #'lsp-bridge-capf

;;                  ;; 我嫌弃TabNine太占用我的CPU了， 需要的同学注释下面这一行就好了
;;                  ;; #'tabnine-completion-at-point

;;                  ;; #'cape-file
;;                  ;; #'cape-dabbrev
;;                  )
;;                 'equal)
;;                )))


;; (dolist (hook lsp-bridge-default-mode-hooks)
;;   (add-hook hook (lambda ()
;;                    (setq-local lsp-bridge-ui-auto nil) ; 编程文件关闭Lsp-Bridge-Ui自动补全， 由lsp-bridge来手动触发补全
;;                    (lsp-bridge-mode 1)             ; 开启lsp-bridge
;;                    (lsp-bridge-mix-multi-backends) ; 通过Cape融合多个补全后端
;;                    )))

;; ;; 融合 `lsp-bridge' `find-function' 以及 `dumb-jump' 的智能跳转
;; (defun lsp-bridge-jump ()
;;   (interactive)
;;   (cond
;;    ((eq major-mode 'emacs-lisp-mode)
;;     (let ((symb (function-called-at-point)))
;;       (when symb
;;         (find-function symb))))
;;    (lsp-bridge-mode
;;     (lsp-bridge-find-def))
;;    (t
;;     (require 'dumb-jump)
;;     (dumb-jump-go))))

;; (defun lsp-bridge-jump-back ()
;;   (interactive)
;;   (cond
;;    (lsp-bridge-mode
;;     (lsp-bridge-return-from-def))
;;    (t
;;     (require 'dumb-jump)
;;     (dumb-jump-back))))

;; ;; 全局开启补全
;; (global-lsp-bridge-ui-mode)
;; (lsp-bridge-ui-history-mode t)
;; (setq lsp-bridge-enable-log t)
(provide 'init-lsp)
