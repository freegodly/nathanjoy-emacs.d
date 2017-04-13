
;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook   'hs-minor-mode)

(require 'google-c-style)  
(add-hook 'c-mode-common-hook 'google-set-c-style)  
(add-hook 'c-mode-common-hook 'google-make-newline-indent)  

(add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))

(provide 'setup-c)



; Key	Binding
; C-c @ C-c	Command: hs-toggle-hiding
;  	Toggle hiding/showing of a block
; C-c @ C-h	Command: hs-hide-block
;  	Select current block at point and hide it
; C-c @ C-l	Command: hs-hide-level
;  	Hide all block with indentation levels
;  	below this block
; C-c @ C-s	Command: hs-show-block
;  	Select current block at point and show it.
; C-c @ C-M-h	Command: hs-hide-all
;  	Hide all top level blocks, displaying
;  	only first and last lines.
; C-c @ C-M-s	Command: hs-show-all
;  	Show everything
