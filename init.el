
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config" )
(add-to-list 'load-path "~/.emacs.d/util")
(setq custom-file (expand-file-name "config/custom.el" user-emacs-directory))

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(require 'init-packages)
(require 'init-better-defaults)
(require 'init-ui)
(require 'init-mode-line)
(require 'init-keybindings)
(require 'init-undo-tree)
(require 'init-eshell)
(require 'init-highlight-symbol)
(require 'init-markdown)
(require 'init-smartparens)
(require 'init-ecb)
(require 'setup-general)
;; (if (version< emacs-version "24.4")
;;     (require 'setup-ivy-counsel)
;;   (require 'setup-helm)
;;   (require 'setup-helm-gtags))
;;(require 'setup-ggtags)
(require 'setup-helm)
(require 'setup-helm-gtags)
(require 'setup-helm-ag)
(require 'setup-cedet)
(require 'setup-editing)
(require 'setup-c)
(require 'init-auto-complete)
(require 'init-srefactor)
(require 'setup-ace-jump-mode)
(require 'init-git)
(require 'setup-org-model)


(load-file custom-file)
(put 'upcase-region 'disabled nil)
