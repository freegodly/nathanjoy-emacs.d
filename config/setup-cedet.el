(require 'cc-mode)
(require 'semantic)
;; Enable EDE only in C/C++
(require 'ede)
;;; enable EDE
(global-ede-mode t)

;;; enable some semantic tools
; (semantic-load-enable-gaudy-code-helpers)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-stickyfunc-mode 1)

(semantic-mode 1)

(defun alexott/cedet-hook ()
  (local-set-key "\C-c\C-j" 'semantic-ia-fast-jump)
  (local-set-key "\C-c\C-s" 'semantic-ia-show-summary))

(add-hook 'c-mode-common-hook 'alexott/cedet-hook)
(add-hook 'c-mode-hook 'alexott/cedet-hook)
(add-hook 'c++-mode-hook 'alexott/cedet-hook)



; (add-to-list 'load-path "~/.emacs.d/lib/cedet/common")
; (add-to-list 'load-path "~/.emacs.d/lib/cedet/semantic")
; (add-to-list 'load-path "~/.emacs.d/lib/cedet/eieio")
; (add-to-list 'load-path "~/.emacs.d/lib/cedet/speedbar")



(provide 'setup-cedet)
