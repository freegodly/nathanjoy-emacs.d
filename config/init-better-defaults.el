
;; emacs代码缩进的配置
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40
                        44 48 52 56 60 64 68 72 76 80 84 88 92 96)) 

;;; continuous scroll
(setq scroll-margin 3)
(setq scroll-conservatively 1000)

(setq ring-bell-function 'ignore) 

(setq make-backup-files nil)

(setq column-number-mode t)

(setq echo-keystrokes 0.1)

(global-font-lock-mode t)

(which-function-mode t)

(setq require-final-newline nil)

(global-auto-revert-mode t)

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 

;;; reformat the title, show some useful info
                                        ;(setq frame-title-format '("%f" (dired-directory dired-directory "%b")))
;;; the above line has a bug showing file name, use the following instead
;;(setq frame-title-format "emacs@%b") 
(setq frame-title-format
      '(buffer-file-name "%f" (dired-directory dired-directory "%b")))


;; 默认显示 80列就换行 
(setq default-fill-column 80) 

;;disable loading vc plugins, it will obviously slow down emacs booting
(setq vc-handled-backends nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 20)

(delete-selection-mode t)



(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
                                            ("8zl" "haaaaaaaaaa")
                                            ("xxx" "################")
                                            ))

(fset 'yes-or-no-p 'y-or-n-p)

(setq default-directory "~/.emacs.d/" )

;;; personal info
(setq user-mail-address "ningjian1@huawei.com")
(setq user-full-name "NingJian")


(require 'highlight-parentheses)
(global-highlight-parentheses-mode t)

(provide 'init-better-defaults)


