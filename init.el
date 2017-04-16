
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;垃圾回收的频率500M
(setq gc-cons-threshold (* 500 1024 1024))

(add-to-list 'load-path "~/.emacs.d/lelpa" )
(add-to-list 'load-path "~/.emacs.d/config" )
(setq custom-file (expand-file-name "config/custom.el" user-emacs-directory))

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-mode-line)
(require 'init-keybindings)
(require 'init-undo-tree)
(require 'init-eshell)
(require 'init-highlight-symbol)
(require 'init-markdown)
(require 'init-smartparens)
(require 'setup-helm)
(require 'setup-helm-gtags)
(require 'setup-helm-ag)
(require 'setup-c)
(require 'init-auto-complete)
(require 'setup-ace-jump-mode)
(require 'init-git)
(require 'setup-org-model)
(require 'init-ext)
(require 'init-aspell)
(load-file custom-file)
(put 'upcase-region 'disabled nil)
