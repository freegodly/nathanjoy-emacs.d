(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))


(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))

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
		      ;;nodejs-repl
		      
		      ;; --- Themes ---
		      monokai-theme
		      solarized-theme

		      ;;other
		      popwin

		      ;;iedit 
		      iedit

		      ;;
		      expand-region

		      yasnippet

		      auto-complete

		      magit

		      ecb

		      let-alist

		      seq

		      python-mode

		      ctags
		      etags
		      
		      cc-mode
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


;;
;;(global-company-mode 1)


;;config  mode-line
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;;dired mode
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(put 'dired-find-alternate-file 'disabled nil)

;;Dired Mode
(require 'dired)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
;;
(require 'dired-x)


;;iedit
;; C-; 
(global-set-key (kbd "M-s e") 'iedit-mode)


;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

(require 'yasnippet)
(yas/global-mode 1)


(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(define-key ac-completing-map "\M-n" 'ac-next) 
(define-key ac-completing-map "\M-p" 'ac-previous)
(setq ac-auto-start 1)
(setq ac-dwim t)



;;git
(require 'magit)


;;ecb
(require 'ecb)
(setq  ecb-tip-of-the-day nil)

;;自动启动 不显示每日提示
(setq ecb-auto-activate t ecb-tip-of-the-day nil)

(require 'auto-complete)
(global-auto-complete-mode t)

(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))


(provide 'init-packages)

