;; -*- coding: utf-8; lexical-binding: t; -*-

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(setq-default cursor-type t)
(put 'erase-buffer 'disabled nil)


(add-hook 'after-init-hook 
	  (lambda () 
	    (progn 
	      (set-face-attribute 'mode-line nil :font "DejaVu Sans Mono-18")
	      (set-face-attribute 'mode-line-inactive nil :font "DejaVu Sans Mono-18")

	      (set-face-attribute 'minibuffer-prompt nil :font "DejaVu Sans Mono-18")
	      (set-face-attribute 'Info-quoted nil :family "DejaVu Sans Mono")
	      (set-face-attribute 'fringe nil :background (face-foreground 'default) :background (face-background 'default))
	      )))

;; set compilation mode coding system
(require 'ansi-color)
(defun endless/colorize-compilation ()
  "Colorize from `compilation-filter-start' to `point'."
  (interactive)
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region
     compilation-filter-start (point))))

(add-hook 'compilation-filter-hook
          #'endless/colorize-compilation)

(defun regexp-alternatives (regexps)
  "Return the alternation of a list of regexps."
  (mapconcat (lambda (regexp)
               (concat "\\(?:" regexp "\\)"))
             regexps "\\|"))

(defvar non-sgr-control-sequence-regexp nil
  "Regexp that matches non-SGR control sequences.")

(setq non-sgr-control-sequence-regexp
      (regexp-alternatives
       '(;; icon name escape sequences
         "\033\\][0-2];.*?\007"
         ;; non-SGR CSI escape sequences
         "\033\\[\\??[0-9;]*[^0-9;m]"
         ;; noop
         "\012\033\\[2K\033\\[1F"
         )))

(defun filter-non-sgr-control-sequences-in-region (begin end)
  (save-excursion
    (goto-char begin)
    (while (re-search-forward
            non-sgr-control-sequence-regexp end t)
      (replace-match ""))))

(defun filter-non-sgr-control-sequences-in-output (ignored)
  (let ((start-marker
         (or comint-last-output-start
             (point-min-marker)))
        (end-marker
         (process-mark
          (get-buffer-process (current-buffer)))))
    (filter-non-sgr-control-sequences-in-region
     start-marker
     end-marker)))

(add-hook 'comint-output-filter-functions
          'filter-non-sgr-control-sequences-in-output)


;; set the Chinise font
(dolist (charset '(kana han hangul symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset 
		    (font-spec :family "WenQuanYi Micro Hei Mono" :height 146 )))

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
(provide 'init-ui)
