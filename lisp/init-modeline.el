;; (use-package simple-modeline
;;   :ensure t
;;   :hook (after-init . simple-modeline-mode))



;; TODO adjust modeline format
;; 1. modified
;; 2. buffer name
;; 3. position
;;
;; 4. input method
;; 5. major mode
;; 6. flycheck ?
;; 7. lsp ?
;; (defun chini/make-mouse-map (mouse function)
;;   (let ((map (make-sparse-keymap)))
;;     (define-key map (vector 'mode-line mouse) function)
;;     map))

;; (defun chini/modified-modeline-format ()
;;   "Displays a color-coded buffer modification/read-only indicator in the mode-line."
;;   '(:eval
;;     (if (not (string-match-p "\\*.*\\*" (buffer-name)))
;; 	(let* ((read-only (and buffer-read-only (buffer-file-name)))
;;                (modified (buffer-modified-p)))
;;           (propertize
;;            (if read-only " " (if modified " ●" " ○"))
;;            'face 'font-lock-keyword-face
;;            'help-echo (format
;;                        "Buffer is %s and %smodified\nmouse-1: Toggle read-only status."
;;                        (if read-only "read-only" "writable")
;;                        (if modified "" "not "))
;;            'local-map (purecopy (chini/make-mouse-map
;; 				 'mouse-1
;; 				 (lambda (event)
;;                                    (interactive "e")
;;                                    (with-selected-window (posn-window (event-start event))
;;                                      (read-only-mode 'toggle)))))
;;            'mouse-face 'mode-line-highlight)))))

;; (defun chini/buffername-modeline-format ()
;;   "Displays the name of the current buffer in the mode-line."
;;   '(:eval
;;     (propertize " %b" 'face 'font-lock-keyword-face)))

;; (defun chini/position-modeline-format ()
;;   "Displays the current cursor position in the mode-line."
;;   `((line-number-mode
;;      ((column-number-mode
;;        (column-number-indicator-zero-based
;; 	(8 " %l:%c")
;; 	(8 " %l:%C"))
;;        (5 " L%l")))
;;      ((column-number-mode
;;        (column-number-indicator-zero-based
;; 	(5 " C%c")
;; 	(5 " C%C")))))
;;     ,(if (region-active-p)
;;          (propertize (format "+%s"
;;                              (apply #'+ (mapcar
;; 					 (lambda (pos)
;;                                            (- (cdr pos)
;;                                               (car pos)))
;; 					 (region-bounds))))
;;                      'font-lock-face 'font-lock-variable-name-face))))

;; (defun chini/inputmethod-modeline-format ()
;;   "Displays the input-method of the buffer in the mode-line."
;;   `(""
;;     (current-input-method
;;      (:propertize (" " current-input-method-title)
;;                   help-echo (format
;;                              "Current input method: %s\nmouse-1: Describe current input method"
;;                              current-input-method)
;;                   mouse-face 'mode-line-highlight))))

;; (defun chini/majormode-modeline-format ()
;;   "Displays the current major mode in the mode-line."
;;   '(:eval
;;     (propertize
;;      (concat " "
;;              (or (and (boundp 'delighted-modes)
;;                       (cadr (assq major-mode delighted-modes)))
;; 		 (format-mode-line mode-name)))
;;      'face 'font-lock-string-face)))


;; (setq-default mode-line-format 
;; 	      (list 
;; 	       (chini/modified-modeline-format)
;; 	       (chini/buffername-modeline-format)
;; 	       (chini/position-modeline-format)
;; 	       (chini/majormode-modeline-format)
;; 	       (chini/inputmethod-modeline-format)
;; 	       )
;; 	      )

;; ;; (setq max-mini-window-height 1)
(use-package doom-modeline
  :defer t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-height 40))
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/awesome-tray"))
;; (require 'awesome-tray)
;; (awesome-tray-mode 1)
(provide 'init-modeline)
