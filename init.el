(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/packages")
(add-to-list 'load-path "~/.emacs.d/config/")

(defconst my-emacs-d (file-name-as-directory user-emacs-directory))
(defconst my-lisp-dir (concat my-emacs-d "lisp")
  "Directory of lisp.")
(defconst my-site-lisp-dir (concat my-emacs-d "site-lisp")
  "Directory of site-lisp")

(defun my-cleanup-gc ()
  "Clean up gc."
  (setq gc-cons-threshold  67108864) ; 64M 671
  (setq gc-cons-percentage 0.1) ; original value
  (garbage-collect))

(run-with-idle-timer 4 nil #'my-cleanup-gc)

(set-face-attribute 'default nil
		    :family "Fira Code"
		    :slant 'normal
		    :height 146
		    :width 'normal
		    :weight 'normal)


(require 'init-startup)
(require 'config-utils)
;; (require 'config-company)
(require 'config-flycheck)


(require 'init-program)
(require 'init-extensions)
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
;; (require 'init-tags)
(require 'init-hlline)
(require 'init-shell)
(require 'init-company)
(require 'init-typescript)
(require 'init-yasnippet)
(require 'init-rime)
(require 'init-julia)
(require 'init-python)
;; (require 'init-font)
;; (require 'init-icons)