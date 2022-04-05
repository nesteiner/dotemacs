(use-package counsel-etags
  :ensure t
  :bind (:map prog-mode-map
	      ("C-c ]" . counsel-etags-find-tag-at-point)
	      ("C-c [" . counsel-etags-find-tag)
	      ("C-c s" . counsel-etags-scan-code)
	      ("C-c b" . pop-tag-mark))
  :init (add-hook 'prog-mode-hook
		  (lambda ()
		    (add-hook 'after-save-hook 'counsel-etags-virtual-update-tags 'append 'local)))
  :config
  (setq counsel-etags-update-interval 60
	counsel-etags-tags-file-name ".tags")
  (push "build" counsel-etags-ignore-directories))

(provide 'init-tags)

