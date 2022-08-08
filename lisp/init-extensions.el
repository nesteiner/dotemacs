(use-package hl-todo
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
	  ("DOING" . "cyan")))
  (global-hl-todo-mode 1))


;; ivy and swiper
(use-package ivy
  :ensure t
  :defer t
  :diminish ivy-mode
  :hook (after-init . ivy-mode))

(use-package swiper
  :ensure t
  :defer t
  :bind ("C-s" . swiper))

;; MODULE vterm
(use-package vterm
  :config
  (setq vterm-clear-scrollback-when-clearing t
	vterm-max-scrollback 500)

  (set-face-attribute 'term-color-black nil :foreground "black" :background "#79a0f5")
  ;; (set-face-attribute 'term-color-black nil :foreground "black" :background "black")
  ;; (set-face-attribute 'vterm-color-black nil :foreground "black" :background "black")
  )
  
  ;; (set-face-attribute 'vterm-color-black nil :foreground "white" :background "black"))


;; MODULE Conda
(use-package conda
  :defer t
  :config
  (setq conda-anaconda-home "/home/steiner/.anaconda"
	conda-env-home-directory "/home/steiner/.anaconda"))



(provide 'init-extensions)
