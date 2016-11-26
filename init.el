(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
	       ;; --- Auto-completion ---
	       company
	       ;; --- Better Editor ---
	       hungry-delete
	       swiper
	       counsel
	       smartparens
	       ;; --- Major Mode ---
	       js2-mode
	       ;; --- Minor Mode ---
	       nodejs-repl
	       
	       ;; --- Themes ---
	       monokai-theme
	       solarized-theme

	       ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
    (loop for pkg in my/packages
	  when (not (package-installed-p pkg)) do (return nil)
	  finally (return t)))

(unless (my/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg my/packages)
      (when (not (package-installed-p pkg))
	(package-install pkg))))

(require 'hungry-delete)
(global-hungry-delete-mode)
 

;;��������
;(add-to-list my/packages 'monokai-theme)
(load-theme 'monokai t)
;;(load-theme 'solarized t)



;;swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
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


;;smartparens-global-mode
(require 'smartparens-config)

;; Always start smartparens mode in js-mode.
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)



;;config  mode-line
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))


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

 

