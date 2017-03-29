(require 'auto-complete)
(require 'auto-complete-config)
;;使用自带字典
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(ac-config-default)

;; 开启全局设定(包含哪些模式在ac-modes里查看)
(global-auto-complete-mode t)


;; 输入2个字符才开始补全
(setq ac-auto-start 2)

(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)

;; 补全的快捷键，用于需要提前补全-当还没有输入指定个数字符时显示弹出菜单。
(global-set-key "\M-/" 'auto-complete)  


(require 'semantic)
(global-semanticdb-minor-mode t)
(global-semantic-idle-scheduler-mode t)
(semantic-mode t)

(require 'stickyfunc-enhance)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)


; Using Semantic with semantic-ia-fast-jump command



; (semantic-add-system-include "/usr/include/boost" 'c++-mode)
; (semantic-add-system-include "~/linux/kernel")
; (semantic-add-system-include "~/linux/include")



;;; function to be called when entering c-mode.
(defun my-c-mode-common-hook-func ()
  (interactive)
  "Function to be called when entering into c-mode."
  (when (and (require 'auto-complete nil t) (require 'auto-complete-config nil t))
    (auto-complete-mode t)
    (make-local-variable 'ac-sources)
    (setq ac-auto-start 2)
    (setq ac-sources '(ac-source-words-in-same-mode-buffers
                       ac-source-dictionary))
    (when (require 'auto-complete-etags nil t)
      (add-to-list 'ac-sources 'ac-source-etags)
      (setq ac-etags-use-document t)))


	;; ac-omni-completion-sources is made buffer local so
	;; you need to add it to a mode hook to activate on 
	;; whatever buffer you want to use it with.  This
	;; example uses C mode (as you probably surmised).

	;; auto-complete.el expects ac-omni-completion-sources to be
	;; a list of cons cells where each cell's car is a regex
	;; that describes the syntactical bits you want AutoComplete
	;; to be aware of. The cdr of each cell is the source that will
	;; supply the completion data.  The following tells autocomplete
	;; to begin completion when you type in a . or a ->

	(add-to-list 'ac-omni-completion-sources
	       (cons "\\." '(ac-source-semantic)))
	(add-to-list 'ac-omni-completion-sources
	       (cons "->" '(ac-source-semantic)))

	;; ac-sources was also made buffer local in new versions of
	;; autocomplete.  In my case, I want AutoComplete to use 
	;; semantic and yasnippet (order matters, if reversed snippets
	;; will appear before semantic tag completions).
    (add-to-list 'ac-sources '(ac-source-semantic ac-source-yasnippet))
	;; (setq ac-sources '(ac-source-semantic ac-source-yasnippet))

)

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook-func)





; (add-hook 'c-mode-common-hook '(lambda ()

;       ;; ac-omni-completion-sources is made buffer local so
;       ;; you need to add it to a mode hook to activate on 
;       ;; whatever buffer you want to use it with.  This
;       ;; example uses C mode (as you probably surmised).

;       ;; auto-complete.el expects ac-omni-completion-sources to be
;       ;; a list of cons cells where each cell's car is a regex
;       ;; that describes the syntactical bits you want AutoComplete
;       ;; to be aware of. The cdr of each cell is the source that will
;       ;; supply the completion data.  The following tells autocomplete
;       ;; to begin completion when you type in a . or a ->

;       (add-to-list 'ac-omni-completion-sources
;                    (cons "\\." '(ac-source-semantic)))
;       (add-to-list 'ac-omni-completion-sources
;                    (cons "->" '(ac-source-semantic)))

;       ;; ac-sources was also made buffer local in new versions of
;       ;; autocomplete.  In my case, I want AutoComplete to use 
;       ;; semantic and yasnippet (order matters, if reversed snippets
;       ;; will appear before semantic tag completions).

;       (setq ac-sources '(ac-source-semantic ac-source-yasnippet))
; ))


(provide 'init-auto-complete)
