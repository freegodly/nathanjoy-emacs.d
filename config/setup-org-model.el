;; 在org-mode里面看到语法高亮的效果
(setq org-src-fontify-natively t)

;; 生成目录表
(setq org-export-with-toc t)

;; 禁用下划线转义
(setq-default org-use-sub-superscripts nil)



;; 在 Org-mode 中你可以直接开启新的缓冲区（Buffer）直接用相应的 Major Mode 来编辑代 码块内的内容。在代码块中使用 C-c ' 会直接打开对应模式的缓冲区（不仅限于 Lisp）。 这样就使在 Org-mode 中编辑代码变的十分方便快捷。

;; 使用 <s 然后 Tab 可以直接插入代码块的代码片段（Snippet）

;; Agenda 的使用
;; C-c C-s 选择想要完成的时间
;; C-c C-d 选择想要结束的时间
;; C-c a 可以打开 Agenda 模式菜单并选择不同的可视方式（ r ）

(provide 'setup-org-model)
