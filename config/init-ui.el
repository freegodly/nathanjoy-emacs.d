;;设置主题
;(add-to-list my/packages 'monokai-theme)
(load-theme 'monokai t)
;;(load-theme 'solarized t)

(set-default-font "12")



 ;;设置窗口位置为屏库左上角(0,0)
  (set-frame-position (selected-frame) 40 30)
  ;;设置宽和高
  (set-frame-width (selected-frame) 120)
  (set-frame-height (selected-frame) 45)


(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)

(setq inhibit-splash-screen t)
(setq-default cursor-type 'bar)

;;启动全屏
(setq initial-frame-alist (quote ((fullscren . maximized))))

;;开启括号高亮匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;当前行高亮
(global-hl-line-mode t) 


(provide 'init-ui)
