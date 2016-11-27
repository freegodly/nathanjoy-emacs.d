



;;����tab������ʽ
;;etq indent-tabs-mode nil)
(setq tab-width 4)

;;�ر�bell
(setq ring-bell-function 'ignore) 

;;disable file backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;;��ʾ�к�
(setq column-number-mode t)

;;������ʾ��������
(setq echo-keystrokes 0.1)

;;�﷨����
(global-font-lock-mode t)

;;��״̬����ʾ��ǰ������Ǹ�����
(which-function-mode t)

;;���Զ���ӻ��е��ļ�ĩβ
(setq require-final-newline nil)

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

(fset 'yes-or-no-p 'y-or-n-p)

(setq default-directory "~/.emacs.d/" )

(provide 'init-better-defaults)


