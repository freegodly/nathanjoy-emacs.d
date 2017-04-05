
;; 一打开就起用 text 模式。 
(setq default-major-mode 'text-mode)

;;ÉèÖÃtabËõ½ø¸ñÊ½
;;etq indent-tabs-mode nil)
(setq tab-width 4)

;;¹Ø±Õbell
(setq ring-bell-function 'ignore) 

;;disable file backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;;ÏÔÊ¾ÁÐºÅ
(setq column-number-mode t)

;;¾¡¿ìÏÔÊ¾°´¼üÐòÁÐ
(setq echo-keystrokes 0.1)

;;Óï·¨¸ßÁÁ
(global-font-lock-mode t)

;;ÔÚ×´Ì¬À¸ÏÔÊ¾µ±Ç°¹â±êÔÚÄÇ¸öº¯Êý
(which-function-mode t)

;;²»×Ô¶¯Ìí¼Ó»»ÐÐµ½ÎÄ¼þÄ©Î²
(setq require-final-newline nil)


;;×Ô¶¯¼ÓÔØÍâ²¿ÐÞ¸ÄµÄÎÄ¼þ
(global-auto-revert-mode t)


;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 


;; 在标题栏提示你目前在什么位置
(setq frame-title-format "emacs@%b") 

;; 默认显示 80列就换行 
(setq default-fill-column 80) 

;;disable loading vc plugins, it will obviously slow down emacs booting
(setq vc-handled-backends nil)

;Ê¹ÓÃÏÂÃæµÄÅäÖÃÀ´¼ÓÈë×î½ü´ò¿ª¹ýÎÄ¼þµÄÑ¡ÏîÈÃÎÒÃÇ¸ü¿ì½ÝµÄÔÚÍ¼ÐÎ½çÃæµÄ²Ëµ¥ÖÐ´ò¿ª×î½ü ±à¼­¹ýµÄÎÄ¼þ
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(delete-selection-mode t)


;;¿ì½ÝËõÐ´
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8zl" "haaaaaaaaaa")
					    ("xxx" "################")
					    ))

(fset 'yes-or-no-p 'y-or-n-p)

(setq default-directory "~/.emacs.d/" )

(provide 'init-better-defaults)


