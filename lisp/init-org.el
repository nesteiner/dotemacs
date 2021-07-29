(provide 'init-org)

(use-package org-download
  :ensure t
  :bind (("C-S-y" . org-download-screenshot)
	 ("C-S-p" . org-download-clipboard))
  
  :config
  (setq-default org-download-image-dir "~/ChiniBlogs/src/images/")
  (add-hook 'dired-mode-hook 'org-download-enable))

(use-package org-bullets
  :ensure t
  :hook (org-mode . org-bullets-mode)
  :config (org-bullets-mode t))


;; (use-package org
;;   :mode ("\\.org$" . org-mode)
;;   :config
;;   (setq org-startup-indented t))


(use-package ox-publish)

(use-package org
  :defer t
  ;; :requires (ox-html ox-publish)
  :mode ("\\.org$" . org-mode)
  :config
  (require 'ox-html)
  (require 'ox-publish)
  (setq   org-startup-indented t
	  org-todo-keyword-faces (quote (("TODO" :foreground "red" :weight bold)
					 ("DONE" :foreground "forest green" :weight bold)
					 ("DOING" :foreground "gold" :weight bold)
					 ("CANCELED" :foreground "brown" :weight bold)))

	  org-todo-keywords '((sequence "TODO(t)" "DOING(o)" "|" "DONE(d)" "CANCELED(c@/!)" "WAIT(w@)"))
	  org-export-preserve-breaks t
	  org-publish-project-alist
	  '(
	    ("images"
	     :base-directory "~/ChiniBlogs/src/"
	     :base-extension "jpg\\|png\\|gif"
	     :publishing-directory "~/ChiniBlogs/html"
	     :publishing-function org-publish-attachment)
	    
	    ("wiki-html"
	     :base-directory "~/ChiniBlogs/src/"
	     :base-extension "org"
	     :publishing-directory "~/ChiniBlogs/html"
	     :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/org.css\"/>"
	     ;; :recursive t
	     :publishing-function org-html-publish-to-html
	     :auto-preamble t
	     :section-numbers nil
	     :author "Steiner"
	     :headline-levels 4)
	    ("chini-blog"
	     :components ("wiki-html" "static" "images")))))
