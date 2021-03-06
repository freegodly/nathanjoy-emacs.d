;;
;; ace jump mode major function
;; 
; (add-to-list 'load-path "~/.emacs.d/elpa/ace-jump-mode-20140616.115")
; (autoload
;   'ace-jump-mode
;   "ace-jump-mode"
;   "Emacs quick move minor mode"
;   t)

(require 'ace-jump-mode)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;(global-set-key (kbd "C-x /") 'ace-jump-mode)
;(global-set-key (kbd "C-c C-f") 'ace-jump-char-mode)
;(global-set-key (kbd "C-c C-w") 'ace-jump-word-mode)
;(global-set-key (kbd "C-c C-l") 'ace-jump-line-mode)

;; 
;; enable a more powerful jump back function from ace jump mode
;;
; (autoload
;   'ace-jump-mode-pop-mark
;   "ace-jump-mode"
;   "Ace jump back:-)"
;   t)
; (eval-after-load "ace-jump-mode"
;   '(ace-jump-mode-enable-mark-sync))
; (define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

; ;;If you use viper mode :
; (define-key viper-vi-global-user-map (kbd "SPC") 'ace-jump-mode)
; ;;If you use evil
; (define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)



(provide 'setup-ace-jump-mode)
