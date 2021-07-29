(provide 'init-startup)

;; MODULE some better setup
(setq  read-process-output-max (* 1024 1024)
       backup-directory-alist `((".*" . ,temporary-file-directory))
       auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
       backup-by-copying t
       delete-old-versions t
       kept-new-versions 6
       kept-old-versions 2
       version-control t
       package-enable-at-startup nil
       gdb-mi-decode-strings "utf-8"
       custom-file "~/.emacs.d/lisp/init-custom.el")

;; MODULE package use
(require 'package)
(setq package-archives
      '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
        ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

(package-initialize)

;; (use-package package
;;   :ensure t
;;   :config
;;   (setq package-archives
;;       '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;; 	("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
;; 	("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))
;;   (package-initialize))



;; MODULE keybinding
(global-set-key (kbd "C-x c") 'compile)
(global-set-key (kbd "C-c l") 'goto-line)
(global-set-key (kbd "s-/") 'company-complete)
(global-set-key (kbd "C-x g") 'magit-status)

;; MODULE env init
(setenv "http_proxy" nil)
(setenv "https_proxy" nil)
(defun proxy ()
  (interactive)
  (setenv "http_proxy" "http://127.0.0.1:7890")
  (setenv "https_proxy" "https://127.0.0.1:7890")
  (message "set proxy successed"))

(defun noproxy ()
  (interactive)
  (setenv "http_proxy" nil)
  (setenv "https_proxy" nil))

(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indent selected region."))
      (progn
        (indent-buffer)
        (message "Indent buffer.")))))

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)



