(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))


(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(

	zygospore 
	helm-projectile
	helm-gtags
	helm 
	yasnippet
	ws-butler 
	volatile-highlights
	use-package 
	undo-tree 
	iedit 
	dtrt-indent 
	counsel-projectile 
	company 
	clean-aindent-mode 
	anzu
	company-c-headers
	ecb
	company
	;; --- Themes ---
	monokai-theme
	solarized-theme

	auto-complete
	projectile 
	stickyfunc-enhance
	srefactor

	ace-jump-mode

	expand-region
	window-numbering
	git-gutter
	magit

	) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))



(provide 'init-packages)

