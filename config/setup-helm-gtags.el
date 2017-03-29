;; this variables must be set before load helm-gtags
;; you can change to any prefix key of your choice
(setq helm-gtags-prefix-key "\C-cg")

(use-package helm-gtags
  :init
  (progn
    (setq helm-gtags-ignore-case t
          helm-gtags-auto-update t
          helm-gtags-use-input-at-cursor t
          helm-gtags-pulse-at-cursor t
          helm-gtags-prefix-key "\C-cg"
          helm-gtags-suggested-key-mapping t)

    ;; Enable helm-gtags-mode in Dired so you can jump to any tag
    ;; when navigate project tree with Dired
    (add-hook 'dired-mode-hook 'helm-gtags-mode)

    ;; Enable helm-gtags-mode in Eshell for the same reason as above
    (add-hook 'eshell-mode-hook 'helm-gtags-mode)

    ;; Enable helm-gtags-mode in languages that GNU Global supports
    (add-hook 'c-mode-hook 'helm-gtags-mode)
    (add-hook 'c++-mode-hook 'helm-gtags-mode)
    (add-hook 'java-mode-hook 'helm-gtags-mode)
    (add-hook 'asm-mode-hook 'helm-gtags-mode)

    ;; key bindings
    (with-eval-after-load 'helm-gtags
      (define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
      (define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
      (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
      (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
      (define-key helm-gtags-mode-map (kbd "C-c \[") 'helm-gtags-previous-history)
      (define-key helm-gtags-mode-map (kbd "C-c \]") 'helm-gtags-next-history))))

(provide 'setup-helm-gtags)



; helm-gtags-mode

; Enable helm-gtags-mode.

; helm-gtags-find-tag

; Input tag name and move to the definition.

; helm-gtags-find-tag-from-here

; Find tag from here and move to its definition.

; helm-gtags-find-rtag

; Input tag name and move to the referenced point.

; helm-gtags-find-symbol

; Input symbol and move to the locations.

; helm-gtags-find-files

; Input file name and open it.

; You can use those searching commands with prefix key.

; Prefix Key  Description
; C-u Searches from specified directory
; C-u C-u Searches under current directory
; C-- Jump to symbol with other window
; helm-gtags-select

; Tag jump using gtags and helm

; helm-gtags-update-tags

; Update TAG file. Default is update only current file, You can update all files with C-u prefix.

; helm-gtags-parse-file

; Show symbols in current file like gtags-parse-file. You can choose any files with C-u prefix.

; helm-gtags-pop-stack

; Move to previous point on the stack. helm-gtags pushes current point to stack before executing each jump functions.

; helm-gtags-next-history

; Move to next history on context stack.

; helm-gtags-previous-history

; Move to previous history on context stack.

; helm-gtags-show-stack

; Show context stack with helm interface. You can jump to the context.

; helm-gtags-clear-stack

; Clear current context stack.

; helm-gtags-clear-all-stacks

; Clear all context stacks.

; helm-gtags-clear-cache

; Clear current project cache for helm-gtags-select and helm-gtags-select-path

; helm-gtags-clear-all-cache

; Clear all result cache for helm-gtags-select and helm-gtags-select-path

; Customize Variables

; helm-gtags-path-style(Default 'root)

; File path style, 'root or 'relative or 'absolute

; helm-gtags-ignore-case

; Ignore case for searching flag (Default nil)

; helm-gtags-read-only

; Open file as readonly, if this value is non-nil(Default nil).

; helm-gtags-auto-update

; If this variable is non-nil, TAG file is updated after saving buffer.

; helm-gtags-update-interval-second(Default 60)

; Tags are updated in `after-save-hook' if this seconds is passed from last update. Always update if value of this variable is nil.

; helm-gtags-cache-select-result(Default nil)

; If this variable is non-nil, use cache for helm-gtags-select and helm-gtags-select-path

; helm-gtags-cache-max-result-size(Default 10MB)

; Max size(bytes) to cache for each select result

; helm-gtags-pulse-at-cursor(Default nil)

; If this variable is non-nil, pulse at point after jumping

; helm-gtags-maximum-candidates(Default 9999)

; Maximum number of helm candidates in helm-gtags.el. If you feel slow for big source tree such as linux kernel, please set small number to this variable.
