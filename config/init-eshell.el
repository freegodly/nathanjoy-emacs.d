(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)

(setq
      eshell-save-history-on-exit   t
      eshell-history-size           512
      eshell-hist-ignoredups        t
      eshell-cmpl-ignore-case       t
      eshell-cp-interactive-query   t
      eshell-ln-interactive-query   t
      eshell-mv-interactive-query   t
      eshell-rm-interactive-query   t
      eshell-mv-overwrite-files     nil

      eshell-highlight-prompt   t
      ;; 提示符设置，下面两项必须对应起来，
      ;; 否则会报 read-only，并且不能补全什么的
      eshell-prompt-regexp      "^[^#$\n]* [#>]+ "
      eshell-prompt-function    (lambda nil
                                  (concat
                                   (abbreviate-file-name
                                    (eshell/pwd))
                                   (if
                                       (=
                                        (user-uid)
                                        0)
                                       " # " " >>> ")))
)


(add-hook 'eshell-load-hook
          (lambda()(setq last-command-start-time (time-to-seconds))))
(add-hook 'eshell-pre-command-hook
          (lambda()(setq last-command-start-time (time-to-seconds))))
(add-hook 'eshell-before-prompt-hook
          (lambda()
              (message "spend %g seconds"
                       (- (time-to-seconds) last-command-start-time))))


(provide 'init-eshell)