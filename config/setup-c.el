
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(require 'google-c-style) 
(add-hook 'c-mode-common-hook 'google-set-c-style)  
(add-hook 'c-mode-common-hook 'google-make-newline-indent)  

;; (add-hook 'python-mode-hook 'flycheck-mode)
;; (add-hook 'c++-mode-hook 'flycheck-mode)
;; (add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))

(provide 'setup-c)
