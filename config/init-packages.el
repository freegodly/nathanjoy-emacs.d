(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
	       ;; --- Auto-completion ---
	       company
	       ;; --- Better Editor ---
	       hungry-delete
	       swiper
	       counsel
	       smartparens
	       ;; --- Major Mode ---
	       js2-mode
	       ;; --- Minor Mode ---
	       nodejs-repl
	       
	       ;; --- Themes ---
	       monokai-theme
	       solarized-theme

	       ;;other
	       popwin

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

(require 'hungry-delete)
(global-hungry-delete-mode)
 
;;swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;;smartparens-global-mode
(require 'smartparens-config)

;; Always start smartparens mode in js-mode.
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

;;popwin
(require 'popwin)
(popwin-mode t)

;;config  mode-line
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))


(provide 'init-packages)

