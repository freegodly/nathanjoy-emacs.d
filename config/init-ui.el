;;设置主题
;(add-to-list my/packages 'monokai-theme)
(load-theme 'monokai t)
;;(load-theme 'solarized t)


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
