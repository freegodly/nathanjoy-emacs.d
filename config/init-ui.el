;;ÉèÖÃÖ÷Ìâ
;(add-to-list my/packages 'monokai-theme)
(load-theme 'monokai t)
;;(load-theme 'solarized t)

(set-default-font "12")


;;设置窗口位置为屏库左上角(0,0)
(set-frame-position (selected-frame) 100 40)
;;设置emacs启动窗口大小
(set-frame-width (selected-frame) 100)
(set-frame-height (selected-frame) 43)

;; 指针颜色设置为白色
(set-cursor-color "white")
;; 鼠标颜色设置为白色
(set-mouse-color "white")


(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)

(setq inhibit-splash-screen t)
(setq-default cursor-type 'bar)

;;Æô¶¯È«ÆÁ
(setq initial-frame-alist (quote ((fullscren . maximized))))

;;¿ªÆôÀ¨ºÅ¸ßÁÁÆ¥Åä
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;µ±Ç°ÐÐ¸ßÁÁ
; (global-hl-line-mode t) 


;; 显示时间，格式如下
(display-time-mode 1) 
(setq display-time-24hr-format t) 
(setq display-time-day-and-date t) 


;; no menu bar
(if (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))


(provide 'init-ui)
