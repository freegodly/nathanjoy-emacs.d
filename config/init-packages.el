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
	helm-ag
    helm-ls-git
    helm-swoop
	yasnippet
	ws-butler 
	volatile-highlights
	use-package 
	undo-tree 
	iedit 
	dtrt-indent 
	company 
	clean-aindent-mode 
	anzu
	company-c-headers
    neotree
    all-the-icons
	;; --- Themes ---
	monokai-theme
	solarized-theme
    doom-themes
	dracula-theme
	
	org-download
	stickyfunc-enhance
	ace-jump-mode
	expand-region
	window-numbering
	git-gutter
	magit
	htmlize
    highlight-symbol
    markdown-mode
    smartparens
    uimage 
    google-c-style
    linum-relative
    highlight-parentheses
    anaconda-mode
    company-anaconda
	flycheck
	flyspell
	flymake
	company-c-headers
	company-irony
	ox-ioslide
	vlf
	web-mode
	windresize
	winner
	imenu
	imenu-list
	multiple-cursors
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

