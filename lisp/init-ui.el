(provide 'init-ui)

(if (display-graphic-p)
    (progn
      (load-theme 'doom-one-light t t)
      (enable-theme 'doom-one-light)))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(setq-default cursor-type 'bar)
(put 'erase-buffer 'disabled nil)


(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  :init
  (setq dashboard-startup-banner "~/.emacs.d/img_sd010.png"
	dashboard-banner-logo-title "Welcome to Emacs Dashboard"
	dashboard-center-content t
	dashboard-set-heading-icons t
	dashboard-set-file-icons t
	dashboard-items '((recents . 10))))


;; (require 'ansi-color)
;; (defun my/ansi-colorize-buffer ()
;;   (let ((buffer-read-only nil))
;;     (ansi-color-apply-on-region (point-min) (point-max))))
;; (add-hook 'compilation-filter-hook 'my/ansi-colorize-buffer)