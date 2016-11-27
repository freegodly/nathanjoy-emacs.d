;;��������
;(add-to-list my/packages 'monokai-theme)
(load-theme 'monokai t)
;;(load-theme 'solarized t)

(set-default-font "12")



 ;;���ô���λ��Ϊ�������Ͻ�(0,0)
  (set-frame-position (selected-frame) 40 30)
  ;;���ÿ�͸�
  (set-frame-width (selected-frame) 120)
  (set-frame-height (selected-frame) 45)


(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)

(setq inhibit-splash-screen t)
(setq-default cursor-type 'bar)

;;����ȫ��
(setq initial-frame-alist (quote ((fullscren . maximized))))

;;�������Ÿ���ƥ��
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;��ǰ�и���
(global-hl-line-mode t) 


(provide 'init-ui)
