
;; emacs代码缩进的配置
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40
                        44 48 52 56 60 64 68 72 76 80 84 88 92 96)) 

;; use space to indent by default
(setq-default indent-tabs-mode t)

;;垃圾回收的频率500M
(setq gc-cons-threshold (* 500 1024 1024))

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



(prefer-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)

;;; reformat the title, show some useful info
                                        ;(setq frame-title-format '("%f" (dired-directory dired-directory "%b")))
;;; the above line has a bug showing file name, use the following instead
;;(setq frame-title-format "emacs@%b") 
(setq frame-title-format
      '(buffer-file-name "%f" (dired-directory dired-directory "%b")))


;;; enlarge the kill ring
(setq kill-ring-max 100)

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



;;; show white spaces
(global-whitespace-mode t)
;(setq whitespace-style '(face space tabs trailing lines-tail newline empty tab-mark newline-mark space-mark)
;(setq whitespace-style '(face space tabs trailing lines-tail empty tab-mark space-mark))
(setq whitespace-style '(face tabs trailing tab-mark))
(setq whitespace-display-mappings
      '((space-mark 32 [32] [183] [46])     ; modified, do not show dot
        (space-mark 160 [164] [95])
        (space-mark 2208 [2212] [95])
        (space-mark 2336 [2340] [95])
        (space-mark 3616 [3620] [95])
        (space-mark 3872 [3876] [95])
        (newline-mark 10 [182 10] [36 10])  ; modified, show another character instead $
        (tab-mark 9 [187 9] [92 9])))

(require 'highlight-parentheses)
(global-highlight-parentheses-mode t)


(require 'vlf-setup)

(provide 'init-better-defaults)


