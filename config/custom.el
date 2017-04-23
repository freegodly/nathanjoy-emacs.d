


(provide 'init-custom)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("9f3181dc1fabe5d58bbbda8c48ef7ece59b01bed606cfb868dd147e8b36af97c" "227e2c160b0df776257e1411de60a9a181f890cfdf9c1f45535fc83c9b34406b" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" default)))
 '(git-gutter:handled-backends (quote (svn hg git)))
 '(helm-ag-base-command "ag --vimgre --nocolor --nogroup --ignore-case")
 '(helm-ag-command-option "--all-text")
 '(helm-ag-ignore-buffer-patterns (quote ("\\.txt\\'" "\\.mkd\\'")))
 '(helm-ag-insert-at-point (quote symbol))
 '(helm-follow-mode-persistent t)
 '(package-selected-packages
   (quote
	(flycheck zygospore helm-projectile helm-gtags helm helm-ag helm-ls-git helm-swoop yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent company clean-aindent-mode anzu company-c-headers neotree all-the-icons monokai-theme solarized-theme doom-themes org-download stickyfunc-enhance ace-jump-mode expand-region window-numbering git-gutter magit htmlize highlight-symbol markdown-mode smartparens uimage google-c-style linum-relative highlight-parentheses anaconda-mode company-anaconda))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#35383a"))))
 '(company-scrollbar-fg ((t (:background "#292b2d"))))
 '(company-tooltip ((t (:inherit default :background "#212425"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face)))))
