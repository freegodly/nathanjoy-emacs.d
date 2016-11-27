



;;设置tab缩进格式
;;etq indent-tabs-mode nil)
(setq tab-width 4)

;;关闭bell
(setq ring-bell-function 'ignore) 

;;disable file backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;;显示列号
(setq column-number-mode t)

;;尽快显示按键序列
(setq echo-keystrokes 0.1)

;;语法高亮
(global-font-lock-mode t)

;;在状态栏显示当前光标在那个函数
(which-function-mode t)

;;不自动添加换行到文件末尾
(setq require-final-newline nil)

;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

;;自动加载外部修改的文件
(global-auto-revert-mode t)



;; 设置默认 Org Agenda 文件目录
(setq org-agenda-files '("~/.emacs.d/org"))



;;设置org文件代码部分语法高亮
(require 'org)
(setq org-src-fontify-natively t)


;使用下面的配置来加入最近打开过文件的选项让我们更快捷的在图形界面的菜单中打开最近 编辑过的文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(delete-selection-mode t)

;;快捷缩写
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8zl" "haaaaaaaaaa")
					    ("xxx" "################")
					    ))

(fset 'yes-or-no-p 'y-or-n-p)

(setq default-directory "~/.emacs.d/" )

(provide 'init-better-defaults)


