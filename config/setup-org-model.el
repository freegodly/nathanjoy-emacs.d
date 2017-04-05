
(require 'org-download)
(setq-default org-download-image-dir "~/.emacs.d/org/images")

(require 'org)

;; 在org-mode里面看到语法高亮的效果
(setq org-src-fontify-natively t)

;; 生成目录表
(setq org-export-with-toc t)

;; 禁用下划线转义
(setq-default org-use-sub-superscripts nil)
(setq-default org-export-with-sub-superscripts nil)


;; 在 Org-mode 中你可以直接开启新的缓冲区（Buffer）直接用相应的 Major Mode 来编辑代 码块内的内容。在代码块中使用 C-c ' 会直接打开对应模式的缓冲区（不仅限于 Lisp）。 这样就使在 Org-mode 中编辑代码变的十分方便快捷。

;; 使用 <s 然后 Tab 可以直接插入代码块的代码片段（Snippet）

;; Agenda 的使用
;; C-c C-s 选择想要完成的时间
;; C-c C-d 选择想要结束的时间
;; C-c a 可以打开 Agenda 模式菜单并选择不同的可视方式（ r ）

(setq org-agenda-files '("~/.emacs.d/org/org"))

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


(require 'util-org)

(kh/add-hook 'org-mode-hook
             '((lambda ()
                 (org-defkey org-mode-map "\C-ct" 'kh/org-insert-export-options-template))
               (lambda ()
                 (setq truncate-lines nil))))



(require 'org-page)
(setq op/repository-directory "~/.emacs.d/org")
(setq op/site-domain "http://www.nathanjoy.com/")
;;; for commenting, you can choose either disqus or duoshuo
(setq op/personal-disqus-shortname "nathanjoy")
(setq op/personal-duoshuo-shortname "nathanjoy")
;;; the configuration below are optional
(setq op/personal-google-analytics-id "your_google_analytics_id")
;;(op/do-publication nil "HEAD^1" "~/.emacs.d/org/publish" nil)

(setq op/site-main-title "NathanJoy Note")
(setq op/site-sub-title "==============> 重剑无锋，大巧不工。")
(setq op/personal-github-link "https://github.com/freegodly")


(setq op/category-config-alist
      '(("blog" ;; this is the default configuration
         :show-meta t
         :show-comment t
         :uri-generator op/generate-uri
         :uri-template "/blog/%y/%m/%d/%t/"
         :sort-by :date     ;; how to sort the posts
         :category-index t) ;; generate category index or not
        ("wiki"
         :show-meta t
         :show-comment nil
         :uri-generator op/generate-uri
         :uri-template "/wiki/%t/"
         :sort-by :mod-date
         :category-index t)
        ("index"
         :show-meta nil
         :show-comment nil
         :uri-generator op/generate-uri
         :uri-template "/"
         :sort-by :date
         :category-index nil)
        ("about"
         :show-meta nil
         :show-comment nil
         :uri-generator op/generate-uri
         :uri-template "/about/"
         :sort-by :date
         :category-index nil)))


(provide 'setup-org-model)
