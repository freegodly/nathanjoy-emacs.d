;;下面是窗口的半透明效果的开启
;;可以用来区分当前窗口和非当前窗口
;;启动时自动开启窗口半透明效果 f10键用来切换

(global-set-key (kbd "<f10>") 'loop-alpha)
;当前窗口和非当前窗口时透明度
(setq alpha-list '((100 70) (100 100)))
(defun loop-alpha ()
(interactive)
(let ((h (car alpha-list)))
((lambda (a ab)
(set-frame-parameter (selected-frame) 'alpha (list a ab))
(add-to-list 'default-frame-alist (cons 'alpha (list a ab))))
(car h) (car (cdr h)))
(setq alpha-list (cdr (append alpha-list (list h))))))
;启动窗口时时自动开启窗口半透明效果
(loop-alpha)



(require 'doom-themes)
(load-theme 'doom-molokai t)
;; (load-theme 'doom-molokai t)
;; (load-theme 'dracula t)
;;(load-theme 'monokai t)



(setq org-fontify-whole-heading-line t
      org-fontify-done-headline t
      org-fontify-quote-and-verse-blocks t)



(set-default-font "14")
(dolist (charset '(kana han cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font) charset
                  (font-spec :family "Microsoft YaHei Mono" :size 20)))


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


(setq initial-frame-alist (quote ((fullscren . maximized))))




;; 显示时间，格式如下
(display-time-mode 1) 
(setq display-time-24hr-format t) 
(setq display-time-day-and-date t) 


;; no menu bar
(if (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))


(provide 'init-ui)
