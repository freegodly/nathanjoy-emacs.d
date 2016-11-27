
(global-set-key (kbd "<f5>") 'open-my-init-file)

;; �����ݼ��󶨿�����֮��Ĳ�� counsel ����
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)


(global-set-key (kbd "C-c p f") 'counsel-git)



;;ecb
;;;; �����ڼ��л�
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
;;;; ���غ���ʾecb����
(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)
(define-key global-map [(control f2)] 'ecb-show-ecb-windows)
;; ;;;; ʹĳһecb�������
(global-set-key (kbd "C-c 1") 'ecb-maximize-window-directories)
(global-set-key (kbd "C-c 2") 'ecb-maximize-window-sources)
(global-set-key (kbd "C-c 3") 'ecb-maximize-window-methods)
(global-set-key (kbd "C-c 4") 'ecb-maximize-window-history)
;; ;;;;�ָ�ԭʼ���ڲ���
(global-set-key (kbd "C-c 0") 'ecb-restore-default-window-sizes)



;;ע��
(global-set-key [?\C-c ?\C-/] 'comment-or-uncomment-region) 


(provide 'init-keybindings)
