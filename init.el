(add-to-list 'load-path "~/.emacs.d/config" )

(require 'init-packages)

;;��������
;(add-to-list my/packages 'monokai-theme)
(load-theme 'monokai t)
;;(load-theme 'solarized t)




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










(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)
(setq inhibit-splash-screen t)
(setq-default cursor-type 'bar)

;;disable file backup
(setq make-backup-files nil)
(setq auto-save-default nil)

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f5>") 'open-my-init-file)

;ʹ���������������������򿪹��ļ���ѡ�������Ǹ���ݵ���ͼ�ν���Ĳ˵��д���� �༭�����ļ�
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; �����ݼ��󶨿�����֮��Ĳ�� counsel ����
(global-set-key (kbd "C-x C-r") 'recentf-open-files)


;;����org�ļ����벿���﷨����
(require 'org)
(setq org-src-fontify-natively t)

;; ����Ĭ�� Org Agenda �ļ�Ŀ¼
(setq org-agenda-files '("~/.emacs.d/org"))

;; ���� org-agenda �򿪿�ݼ�
(global-set-key (kbd "C-c a") 'org-agenda)

;;�Զ������ⲿ�޸ĵ��ļ�
(global-auto-revert-mode t)


;;����ȫ��
(setq initial-frame-alist (quote ((fullscren . maximized))))


(delete-selection-mode t)

;;�������Ÿ���ƥ��
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;��ǰ�и���
(global-hl-line-mode t) 

;;�Զ���ʾ
(global-company-mode 1)

;;�ر�bell
(setq ring-bell-function 'ignore) 

;;�����д
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8zl" "haaaaaaaaaa")
					    ("xxx" "################")
					    ))


