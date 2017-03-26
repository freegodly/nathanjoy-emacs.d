;;ecb
(require 'ecb)
(setq  ecb-tip-of-the-day nil)

;;自动启动 不显示每日提示
(setq ecb-auto-activate t ecb-tip-of-the-day nil)



;;ecb
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
;;;;
(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)
(define-key global-map [(control f2)] 'ecb-show-ecb-windows)
;; ;;;;
(global-set-key (kbd "C-c 1") 'ecb-maximize-window-directories)
(global-set-key (kbd "C-c 2") 'ecb-maximize-window-sources)
(global-set-key (kbd "C-c 3") 'ecb-maximize-window-methods)
(global-set-key (kbd "C-c 4") 'ecb-maximize-window-history)
;; ;;;;
(global-set-key (kbd "C-c 0") 'ecb-restore-default-window-sizes)

(provide 'init-ecb)