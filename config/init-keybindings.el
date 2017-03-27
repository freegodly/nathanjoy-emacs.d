
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)


;;
(global-set-key [?\C-c ?\C-/] 'comment-or-uncomment-region) 

;;iedit
;; C-; 

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)


(require 'window-numbering)
(window-numbering-mode t)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))

(provide 'init-keybindings)
