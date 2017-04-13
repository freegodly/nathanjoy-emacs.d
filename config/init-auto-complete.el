(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/elpa/yasnippet-20170322.1829/snippets"                   ;; he default collection
        ; "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
        ; "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
        ; "/path/to/yasnippet/snippets"         ;; the default collection
        ))

(yas-global-mode 1)

(require 'company)

(setq company-idle-delay 0.2;菜单延迟
      company-minimum-prefix-length 1; 开始补全字数
      company-require-match nil
      company-dabbrev-ignore-case nil
      company-dabbrev-downcase nil
      company-show-numbers t; 显示序号
      company-transformers '(company-sort-by-backend-importance)
      company-continue-commands '(not helm-dabbrev))


(add-to-list 'company-backends 'company-c-headers)
(setq company-backends (delete 'company-semantic company-backends))
(setq company-backends (delete 'company-clang company-backends))

;;(add-to-list 'company-c-headers-path-system "/usr/include/c++/4.8/")
(setq company-backends-c-mode-common '((
                                          company-c-headers :with company-yasnippet
                                          company-keywords :with company-yasnippet
                                          company-files :with company-yasnippet
                                          company-dabbrev  :with company-yasnippet
                                          company-gtags   :with company-yasnippet
                                          )))



(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

(setq company-backends-python-mode '((company-anaconda :with company-yasnippet
                                    company-keywords :with company-yasnippet
                                    company-files :with company-yasnippet
                                    company-dabbrev :with company-yasnippet
                                    company-gtags :with company-yasnippet
                                    )))



;; 补全的快捷键，用于需要提前补全-当还没有输入指定个数字符时显示弹出菜单。
(global-set-key "\M-/" 'company-complete-common)
(global-set-key  [(control tab)] 'company-complete-common)



(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-auto-complete)
