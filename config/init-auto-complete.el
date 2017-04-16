(require 'company-words-discn)

(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/elpa/yasnippet-20170322.1829/snippets"                   ;; he default collection
										; "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
										; "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
										; "/path/to/yasnippet/snippets"         ;; the default collection
        ))

(yas-global-mode 1)

(require 'company)

(require 'color)

(let ((bg (face-attribute 'default :background)))
  (custom-set-faces
   `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
   `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
   `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
   `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
   `(company-tooltip-common ((t (:inherit font-lock-constant-face))))))

(setq company-idle-delay 0;菜单延迟
      company-minimum-prefix-length 1; 开始补全字数
      company-require-match nil
      company-dabbrev-ignore-case nil
      company-dabbrev-downcase nil
      company-show-numbers t; 显示序号
	  company-tooltip-limit 10
	  company-tooltip-align-annotations t
	  company-tooltip-flip-when-above t
	  company-tooltip-margin 1
      company-transformers '(company-sort-by-backend-importance company-sort-by-occurrence)
      company-continue-commands '(not helm-dabbrev))


(setq company-backends (delete 'company-semantic company-backends))
(setq company-backends (delete 'company-clang company-backends))

(add-hook 'c++-mode-hook
		  (lambda()
			(set (make-local-variable 'company-backends)
									  '(
										(
										 company-irony
										 company-c-headers
										 ;;company-clang
										 company-dabbrev-code
										 company-yasnippet
										 company-gtags)
										company-files
										company-keywords
										company-oddmuse
										company-dabbrev
										))))


(setq python-shell-completion-native-enable nil)
(add-hook 'python-mode-hook 'anaconda-mode)
(remove-hook 'anaconda-mode-response-read-fail-hook
                 'anaconda-mode-show-unreadable-response)
(add-hook 'python-mode-hook
		  (lambda()
			(set (make-local-variable 'company-backends)
									  '(
										(
										 ;;company-anaconda
										 company-dabbrev-code
										 company-yasnippet
										 company-gtags)
										company-files
										company-keywords
										company-oddmuse
										company-dabbrev
										))))



;; 补全的快捷键，用于需要提前补全-当还没有输入指定个数字符时显示弹出菜单。
(global-set-key "\M-/" 'company-complete-common)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-auto-complete)
