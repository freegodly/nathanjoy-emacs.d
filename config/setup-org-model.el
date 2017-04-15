(require 'org-download)
(setq-default org-download-image-dir "~/.emacs.d/org/imgs")
(require 'ob-latex)

;; 在 Org-mode 中你可以直接开启新的缓冲区（Buffer）直接用相应的 Major Mode 来编辑代 码块内的内容。在代码块中使用 C-c ' 会直接打开对应模式的缓冲区（不仅限于 Lisp）。 这样就使在 Org-mode 中编辑代码变的十分方便快捷。

;; 使用 <s 然后 Tab 可以直接插入代码块的代码片段（Snippet）

;; Agenda 的使用
;; C-c C-s 选择想要完成的时间
;; C-c C-d 选择想要结束的时间
;; C-c a 可以打开 Agenda 模式菜单并选择不同的可视方式（ r ）

(setq org-agenda-files '("~/.emacs.d/org"))

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)



(defun nj/org-insert-export-options-template ()
  "Insert a template with information for exporting into current buffer. Based
on org-insert-export-options-template, but modified several fields."
  (interactive)
  (if (not (bolp)) (newline))
  (insert
   "#+SETUPFILE: theme-bigblow-local.setup"
   ))


(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i!)" "HANGUP(h!)" "|" "DONE(d!)" "CANCEL(c!)")))

;; 在org-mode里面看到语法高亮的效果
(setq org-src-fontify-natively t)

;; 生成目录表
(setq org-export-with-toc t)

;; 禁用下划线转义
(setq-default org-use-sub-superscripts nil)
(setq-default org-export-with-sub-superscripts nil)


(defun org-mode-my-init ()
  ;; 不关闭中文输入法，输入章节标题里面的星号
  (define-key org-mode-map (kbd "×") (kbd "*"))
  (define-key org-mode-map (kbd "－") (kbd "-"))
  (set-face-attribute 'org-level-1 nil :height 1.6 :bold t)
  (set-face-attribute 'org-level-2 nil :height 1.4 :bold t)
  (set-face-attribute 'org-level-3 nil :height 1.2 :bold t)
  (org-defkey org-mode-map "\C-ct" 'nj/org-insert-export-options-template)
  (setq truncate-lines nil)
  )

(add-hook 'org-mode-hook 'org-mode-my-init)

(require 'uimage)
(add-hook 'org-mode-hook 'uimage-mode)


(provide 'setup-org-model)
