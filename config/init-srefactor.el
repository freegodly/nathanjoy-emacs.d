(require 'srefactor)
(require 'srefactor-lisp)

;; OPTIONAL: ADD IT ONLY IF YOU USE C/C++. 
(semantic-mode 1) ;; -> this is optional for Lisp

(define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
(define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
(global-set-key (kbd "M-RET o") 'srefactor-lisp-one-line)
(global-set-key (kbd "M-RET m") 'srefactor-lisp-format-sexp)
(global-set-key (kbd "M-RET d") 'srefactor-lisp-format-defun)
(global-set-key (kbd "M-RET b") 'srefactor-lisp-format-buffer)


(provide 'init-srefactor)




; Usage

; To use this package, a user only needs to use this single command: srefactor-refactor-at-point and semantic-mode activated. Based on the context at point, appropriate menu items are offered. When the menu opens up, the top line contains the tag at point, which is the context for offering appropriate refactor actions.

; Key bindings of contextual menu:

; 1..9 to quickly execute an action.
; o to switch to next option, O to switch to previous option.
; n to go to the next line, p to got to previous line.
; q or C-g to quit.
; You can hide the help message in the menu with by customizing srefactor-ui-menu-show-help and set it to nil.

; (setq srefactor-ui-menu-show-help nil)
