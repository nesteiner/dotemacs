;; (use-package w3m
;;   :load-path "/usr/share/emacs/site-lisp/w3m"
;;   :config
;;   (setq w3m-home-page "https://www.baidu.com"
;; 	w3m-default-display-inline-images t
;; 	w3m-default-toggle-inline-images t
;; 	w3m-show-graphic-icons-in-header-line t
;; 	w3m-show-graphic-icons-in-mode-line t
;; 	w3m-use-cookies t
;; 	w3m-command-arguments '("-cookie" "-F")))

(use-package hl-todo
  :load-path "~/workspace/scheme/hl-todo/"
  :config
  (setq hl-todo-keyword-faces
	'(("TODO"   . "#FF0000")
	  ("FIXME"  . "#FF0000")
	  ("DEBUG"  . "#A020F0")
	  ("GOTCHA" . "#FF4500")
	  ("STUB"   . "#1E90FF")
	  ("PROBLEM" . "#ffff00")
	  ("MODULE" . "#7fff00")
	  ("ATTENTION" . "#00ffff")
	  ("DONE" . "#7fff00")
	  ("DOING" . "cyan"))))


;; (use-package eaf
;;   :load-path "~/disk/disk1/emacs-application-framework"
;;   :init
;;   (use-package epc :defer t :ensure t)
;;   (use-package ctable :defer t :ensure t)
;;   (use-package deferred :defer t :ensure t)
;;   (use-package s :defer t :ensure t)
;;   :custom
;;   (eaf-browser-continue-where-left-off t)
;;   :config
;;   (eaf-setq eaf-browser-enable-adblocker "true")
;;   (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
;;   (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
;;   (eaf-bind-key take_photo "p" eaf-camera-keybinding)
;;   (eaf-bind-key nil "M-q" eaf-browser-keybinding) ;; unbind, see more in the Wiki
;;   (setq eaf-grip-token "16a15bb0d544413a4cf8978cf8aada5043f3f00d"
;; 	eaf-proxy-type "http"
;; 	eaf-proxy-host "127.0.0.1"
;; 	eaf-proxy-port "7890"))


;; ivy and swiper
(use-package ivy
  :ensure t
  :diminish ivy-mode
  :hook (after-init . ivy-mode))

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

;; MODULE vterm
(use-package vterm
  :config
  (setq vterm-clear-scrollback t
	vterm-max-scrollback 500))

;; MODULE Conda
(use-package conda
  :config
  (setq conda-anaconda-home "/home/steiner/.anaconda"
	conda-env-home-directory "/home/steiner/.anaconda"))


;; MODULE modeline
(use-package doom-modeline
  :ensure t
  :config
  (doom-modeline-mode t))
;; (use-package simple-modeline
;;   :ensure t
;;   :config
;;   (simple-modeline-mode 1))


(provide 'init-extensions)