(add-to-list 'load-path "~/.emacs.d/config" )


(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)


(setq custom-file (expand-file-name "config/custom.el" user-emacs-directory))

(load-file custom-file)
