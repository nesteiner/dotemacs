(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/packages")
(add-to-list 'load-path "~/.emacs.d/config/")
;; (setq custom-theme-load-path '("~/.emacs.d/theme"))


(defconst my-emacs-d (file-name-as-directory user-emacs-directory))
(defconst my-lisp-dir (concat my-emacs-d "lisp")
  "Directory of lisp.")
(defconst my-site-lisp-dir (concat my-emacs-d "site-lisp")
  "Directory of site-lisp")

(defun my-cleanup-gc ()
  "Clean up gc."
  (setq gc-cons-threshold  (* 1024 200)) ; 200MB
  (setq gc-cons-percentage 0.5) ; 0.5s
  (garbage-collect))

(run-with-idle-timer 4 nil #'my-cleanup-gc)

(set-face-attribute 'default nil
		    :family "Dejavu Sans Mono"
		    :slant 'normal
		    :height 155
		    :width 'normal
		    :weight 'normal)

(require 'init-startup)
(require 'use-package)
(require 'config-utils)
;; (require 'config-company)
(require 'config-flycheck)

;; ATTENTION start
(require 'init-modeline)
(require 'init-extensions)

(require 'init-program)

(require 'init-ui)
(require 'init-custom)
(require 'init-org)
(require 'init-database)
(require 'init-conda)
(require 'init-whichkey)
(require 'init-projectile)
;; (require 'init-tab)
(require 'init-window)
(require 'init-lsp)
(require 'init-pair)
(require 'init-tags)
(require 'init-hlline)

;; (require 'init-company)
(require 'init-typescript)
(require 'init-yasnippet)
(require 'init-rime)
(require 'init-julia)
(require 'init-python)
(require 'init-rust)
(require 'init-sql)
;; ATTENTION end
(require 'init-theme)
;; ATTENTION stub here
(require 'init-treemacs)
(require 'init-fold)

(provide 'init)
