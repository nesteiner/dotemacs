(use-package rime
  :ensure t
  :config
  (setq rime-show-candidate 'minibuffer
	rime-user-data-dir (concat user-emacs-directory "rime")
	rime-translate-keybindings '("C-f" "C-b" "C-n" "C-p" "C-g" "<left>" "<right>" "<up>" "<down>" "<prior>" "<next>" "<delete>"))
  :custom
  (default-input-method "rime"))

(provide 'init-rime)
