;;��������
;(add-to-list my/packages 'monokai-theme)
(load-theme 'monokai t)
;;(load-theme 'solarized t)


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
