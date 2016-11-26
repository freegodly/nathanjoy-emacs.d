
;;�ر�bell
(setq ring-bell-function 'ignore) 

;;disable file backup
(setq make-backup-files nil)
(setq auto-save-default nil)



;; ���� org-agenda �򿪿�ݼ�
(global-set-key (kbd "C-c a") 'org-agenda)

;;�Զ������ⲿ�޸ĵ��ļ�
(global-auto-revert-mode t)



;; ����Ĭ�� Org Agenda �ļ�Ŀ¼
(setq org-agenda-files '("~/.emacs.d/org"))



;;����org�ļ����벿���﷨����
(require 'org)
(setq org-src-fontify-natively t)


;ʹ���������������������򿪹��ļ���ѡ�������Ǹ���ݵ���ͼ�ν���Ĳ˵��д���� �༭�����ļ�
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(delete-selection-mode t)

;;�����д
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8zl" "haaaaaaaaaa")
					    ("xxx" "################")
					    ))

(provide 'init-better-defaults)
