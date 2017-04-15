
;; for org img
(defun my-org-screenshot ()
  "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
  (interactive)
  (org-display-inline-images)
  (setq filename
        (concat
         (make-temp-name
          (concat default-directory "../org/imgs/"
                  (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
  (unless (file-exists-p (file-name-directory filename))
    (make-directory (file-name-directory filename)))
										; take screenshot
  (if (eq system-type 'windows-nt)
      (progn
		(call-process-shell-command
		 (concat "python " default-directory "../script/saveimg.py")
		 nil nil nil nil
		 filename
		 )
		))
  (if (file-exists-p filename)
      (insert (concat "[[file:" filename "]]")))
  (org-display-inline-images)
  )

(global-set-key (kbd "C-c p s") 'my-org-screenshot)


(provide 'init-ext)
