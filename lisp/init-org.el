(with-eval-after-load 'org
  (use-package org-download
    :ensure t
    :defer t
    :bind (("C-S-y" . org-download-screenshot)
	   ("C-S-p" . org-download-clipboard))
    
    :config
    (setq-default org-download-image-dir "./images/")
    (add-hook 'dired-mode-hook 'org-download-enable))

  (use-package org-bullets
    :ensure t
    :defer t
    :hook (org-mode . org-bullets-mode)
    :config (org-bullets-mode t))

  (require 'ox-publish)
  (require 'ox)
  (with-eval-after-load 'ox
    (require 'ox-hugo))

  (setq org-todo-keywords
	(quote ((sequence "TODO(t)" "DOING(i)" "|" "DONE(d)" "CANCEL(c@)")))

	org-todo-keyword-faces
	(quote (("TODO" :foreground "#FF0000" :weight bold)
		("DOING" :foreground "cyan" :weight bold)
		("DONE" :foreground "#7fff00" :weight bold)
		("CANCEL" :foreground "#A020F0" :weight bold))))
  (setq org-startup-indented t
	org-export-preserve-breaks t)
  )

;; (setq org-startup-indented t
;; 	org-export-preserve-breaks t
;; 	org-publish-project-alist
;; '(("blog-notes"
;;    :base-directory "~/workspace/ChiniBlogs/src/"
;;    :base-extension "org"
;;    :publishing-directory "~/workspace/ChiniBlogs/html/"
;;    :publishing-function org-html-publish-to-html
;;    :headline-levels 5
;;    :section-numbers 4
;;    :auto-preamble t
;;    :author "Steiner"
;;    :email "steiner3044@163.com"
;;    :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/org.css\"/>"
;;    )
;;   ("blog-static"
;;    :base-directory "~/workspace/ChiniBlogs/src/images/"
;;    :base-extension "css\\|js\\|png\\|jpg\\|gif"
;;    :publishing-directory "~/workspace/ChiniBlogs/html/images/"
;;    :publishing-function org-publish-attachment)
;;   )))


(provide 'init-org)
