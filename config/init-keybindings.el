
(require 'window-numbering)
(window-numbering-mode t)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))

(require 'iedit)
;; for tab key
;;*** simple indent/unindent just like other editors
;; unlike emacs' default settings, this would not use syntax-based indent, but:
;;  - if region selected, indent/unindent the region (tab-width)
;;    * the region mark would not deactivated automatically
;;  - if no region selected, <TAB> would
;;    * if cursor lies in line leading, always indent tab-width
;;    * if cursor lies in word ending and `tab-always-indent' is `complete', try complete
;;    * otherwise, always insert a TAB char or SPACEs
;;  - if no region selected, <S-TAB> would
;;    * if cursor lies in line leading, always unindent tab-width 
;;    * otherwise, the cursor would move backwards (tab-width)
;; Note: this implementation would hornor `tab-always-indent', `indent-tabs-mode' and `tab-with'.
(defun abs-indent (arg)					;
  "Absolutely indent current line or region. Mimic other editors' indent."
  (interactive "P")
  (let ( (width (or arg tab-width)) )
	(if mark-active
		;;DONE: how to restore region after `indent-rigidly'
		(let ( (deactivate-mark nil) )
		  (indent-rigidly (region-beginning) (region-end) width))
	  (let ( (pt           (point))
			 (pt-bol       (line-beginning-position))
			 (pt-bol-nonws (save-excursion (back-to-indentation) (point))) )
		(if (<= pt pt-bol-nonws)  ;;in leading whitespaces
			(progn
			  (back-to-indentation)
			  (if (looking-at "$")  ;;all chars in this line are whitespaces or tabs
                  (indent-to (+ (current-column) width))
                (progn
                  (indent-rigidly pt-bol (line-end-position) width)
                  (back-to-indentation))))
		  (if (and (eq tab-always-indent 'complete)
				   (looking-at "\\>"))
			  (call-interactively abs-indent-complete-function)
			(if indent-tabs-mode
				(insert-char ?\t 1)
			  (insert-char ?  width))))))))

(defvar abs-indent-complete-function 'dabbrev-expand
  "The function used in `abs-indent' for completion.")
(make-variable-buffer-local 'abs-indent-complete-function)

(defun abs-unindent (arg)
  "Absolutely unindent current line or region."
  (interactive "P")
  (if mark-active
      (let ( (deactivate-mark nil) )
        (indent-rigidly (region-beginning) (region-end) (- tab-width)))
    (let ( (pt           (point))
           (pt-bol       (line-beginning-position))
           (pt-bol-nonws (save-excursion (back-to-indentation) (point))) )
      (if (> pt pt-bol-nonws)  ;;in content
          (move-to-column (max 0 (- (current-column) tab-width)))
        (progn
          (back-to-indentation)
          (backward-delete-char-untabify (min tab-width (current-column))))))))


(global-set-key (kbd "<tab>")    'abs-indent)
(global-set-key (kbd "<S-tab>")  'abs-unindent)


(global-set-key (kbd "M-SPC") 'set-mark-command)
;;; rebind it to Shift-Space, make it the same as Intellij IDEA
;;; this binding is not used any more
;;; since I have bound the system input method hot key to other keys
										;(global-set-key (kbd "S-SPC") 'set-mark-command)



(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(global-set-key (kbd "C-z") 'undo-tree-undo)

;;注释
(defun my-comment-or-uncomment-region (beg end &optional arg)  
  (interactive (if (use-region-p)  
                   (list (region-beginning) (region-end) nil)  
                 (list (line-beginning-position)  
                       (line-beginning-position 2))))  
  (comment-or-uncomment-region beg end arg)  
  ) 
(global-set-key [?\C-c ?\C-/] 'my-comment-or-uncomment-region) 

(require 'neotree)
(global-set-key  [(control f1)] 'neotree-toggle)

;;iedit
;; C-; 

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)


;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)


;; 快速切换至上个buffer
(global-set-key [(control tab)] '(lambda ()
								   (interactive)
								   (switch-to-buffer (other-buffer (current-buffer) 1))))


;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)
(add-hook 'python-mode-hook     'hs-minor-mode)

(defun hs-minor-mode-keys ()
  	(define-key hs-minor-mode-map [(meta right)] 'hs-show-block)
	(define-key hs-minor-mode-map [(meta left)] 'hs-hide-block)
  )
(add-hook 'hs-minor-mode-hook 'hs-minor-mode-keys)


(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


(require 'e2wm)
(global-set-key (kbd "M-+") 'e2wm:start-management)

(provide 'init-keybindings)
