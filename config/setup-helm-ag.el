
(require 'helm-ag)

(custom-set-variables
 '(helm-follow-mode-persistent t))

;; (defcustom helm-ag-base-command
;;   (if (helm-ag--windows-p)
;;       "ag --vimgrep"
;;     "ag --nocolor --nogroup --ignore-case")
;;   "Base command of `ag'"
;;   :type 'string)

;; (custom-set-variables
;;  '(helm-ag-base-command "ag --vimgre --nocolor --nogroup --ignore-case")
;;  '(helm-ag-command-option "--all-text")
;;  '(helm-ag-insert-at-point 'symbol)
;;  '(helm-ag-ignore-buffer-patterns '("\\.txt\\'" "\\.mkd\\'")))


(provide 'setup-helm-ag)
