(require 'util-common)

;-------------------------------------------------------------------------------
; basic config
;-------------------------------------------------------------------------------
;;; disable the startup window which shows a picture "GNU Emacs"
(setq inhibit-startup-message t)
;;; the startup message shows in *scratch* buffer
(setq initial-scratch-message "")

;;; reformat the title, show some useful info
;(setq frame-title-format '("%f" (dired-directory dired-directory "%b")))
;;; the above line has a bug showing file name, use the following instead
(setq frame-title-format
      '(buffer-file-name "%f" (dired-directory dired-directory "%b")))

;;; personal info
(setq user-mail-address "ningjian1@huawei.com")
(setq user-full-name "NingJian")

;;; set default major mode to text-mode
;;; `default-major-mode' is obsolete since 23.2, use `major-mode' instead
(if is-version-after-24
    (setq-default major-mode 'text-mode)
  (setq default-major-mode 'text-mode))

;;; disable toolbar, menu bar and scroll bar
;;; show menu bar in mac, since it does not affect a lot
(unless is-os-mac
  (menu-bar-mode -1))
;;; use if to avoid emacs init error under terminal
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))

(set-scroll-bar-mode nil)
(global-linum-mode t)
(setq column-number-mode t)


;;; solve the mark setting conflict with system input method
;;; solved conflict on windows, but it still conflict on mac with spotlight,
;;; what the fuck...

(global-set-key (kbd "M-SPC") 'set-mark-command)
;;; rebind it to Shift-Space, make it the same as Intellij IDEA
;;; this binding is not used any more
;;; since I have bound the system input method hot key to other keys
;(global-set-key (kbd "S-SPC") 'set-mark-command)


;;; minimize and then maximize the frame when startup
;;; do not maximize directly because it can not be maximized directly
;(w32-send-sys-command 61472)    ; minimize
;(w32-send-sys-command 61488)    ; maximize

;;; enable minibuffer partial completion mode
;;; this mode is obsolete in Emacs 24
(if (not is-version-after-24)
    (partial-completion-mode 1))

;;; enable abbrev mode
;;; first time input "kh", then "C-x aig" to define a full name of it,
;;; eg. "Kelvin Hu"
;;; then input "kh", it will be expanded automatically to "Kelvin Hu"
;(setq-default abbrev-mode t)
;(setq save-abbrevs nil)

;;; key press echo time interval
(setq echo-keystrokes 0.01)

;;; use y/n to instead yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;; do not blink cursor
(blink-cursor-mode -1)

;;; cursor type
(setq-default cursor-type 'box)

;;; continuous scroll
(setq scroll-margin 3)
(setq scroll-conservatively 1000)
;;; the next line will avoid the screen jumpy while quick scrolling
(setq auto-window-vscroll nil)

;;; shutdown mouse accelerating
(setq mouse-wheel-progressive-speed nil)

;;; do not backup and auto save
(setq make-backup-files nil)
(setq auto-save-default nil)

;;; syntax highlighting
(global-font-lock-mode t)

;;; turn on minibuffer completion
(icomplete-mode t)

;;; highlight current line
(global-hl-line-mode t)
;;; highlight current column
;(require 'vline)
;(vline-global-mode)
;(require 'col-highlight)
;(column-highlight-mode)

;;; auto refresh buffers when files changed on disk
(global-auto-revert-mode t)

;;; disable show-paren-mode, use smartparens instead
;(show-paren-mode t)

;;; fuck, fci-rule-column is a local variable, use setq-default instead of setq
;(setq fci-rule-column 80)
(setq-default fci-rule-column 80)


(provide 'init-misc)
