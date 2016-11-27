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
(global-company-mode 1)


;;config  mode-line
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;;dired mode
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(put 'dired-find-alternate-file 'disabled nil)

;; Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;;
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;
(require 'dired-x)


;;iedit
;; C-; 
(global-set-key (kbd "M-s e") 'iedit-mode)


;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;; (require 'yasnippet)
;; (yas/initialize)


;; (require 'auto-complete)
;; (require 'auto-complete-config)
;; (global-auto-complete-mode t)
;; (setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
;; (add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
;; (add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))
;; (set-face-background 'ac-candidate-face "lightgray")
;; (set-face-underline 'ac-candidate-face "darkgray")
;; (set-face-background 'ac-selection-face "steelblue")
;; (define-key ac-completing-map "\M-n" 'ac-next) 
;; (define-key ac-completing-map "\M-p" 'ac-previous)
;; (setq ac-auto-start 2)
;; (setq ac-dwim t)
;; (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)


;;git
;; (require 'magit)


;; ;;ecb
;; (require 'ecb)
;; ;;(require 'ecb-autoloads)
;; (setq ecb-primary-secondary-mouse-buttons 'mouse-1-C-mouse-1)

;; ;;自动启动 不显示每日提示
;; (setq ecb-auto-activate t ecb-tip-of-the-day nil)


;; ;;yasnippet
;; (require 'yasnippet)
;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/elpa/yasnippet-20161110.1226/snippets")
;; (setq yas/prompt-functions 
;;    '(yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
;; (yas/global-mode 1)
;; (yas/minor-mode-on) ; 以minor mode打开，这样才能配合主mode使用



(provide 'init-packages)

