(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(setq projectile-indexing-method 'alien)

(setq projectile-switch-project-action 'helm-projectile-find-file)

(setq projectile-switch-project-action 'helm-projectile)

; helm-projectile-find-file, C-c p f

; All Projectile commands has prefix C-c p.




; Key Binding	Command	Description
; C-c p h	helm-projectile	Helm interface to projectile
; C-c p p	helm-projectile-switch-project	Switches to another projectile project
; C-c p f	helm-projectile-find-file	Lists all files in a project
; C-c p F	helm-projectile-find-file-in-known-projects	Find file in all known projects
; C-c p g	helm-projectile-find-file-dwim	Find file based on context at point
; C-c p d	helm-projectile-find-dir	Lists available directories in current project
; C-c p e	helm-projectile-recentf	Lists recently opened files in current project
; C-c p a	helm-projectile-find-other-file	Switch between files with same name but different extensions
; C-c p i	projectile-invalidate-cache	Invalidate cache
; C-c p z	projectile-cache-current-file	Add the file of current selected buffer to cache
; C-c p b	helm-projectile-switch-to-buffer	List all open buffers in current project
; C-c p s g	helm-projectile-grep	Searches for symbol starting from project root
; C-c p s a	helm-projectile-ack	Same as above but using ack
; C-c p s s	helm-projectile-ag	Same as above but using ag



; Prefix key of Projectile is C-c p. Some notable features:

; Jump to any file in the project: C-c p f.
; Jump to any directory in the project: C-c p d.
; List buffers local to current project: C-c p b.
; Jump to recently visited files in project: C-c p e.
; Grep in project: C-c p g s
; Multi-occur in project buffers: C-c p o.
; Simple refactoring with text replace in current project: C-c p r.
; Switch visited projects (visited once an Projectile remembers): C-c p p.
; Useful commands for working with C/C++ projects:

; Run compilation command at project root: C-c p c. By default, Projectile prompts the make command.
; Switch between .h and .c or .cpp: C-c p a. If the filename - without file
;  extension - of current editing buffer is part of other files,
;   those files are listed as well. If there is only one file with
;    the same name but different extension, switch immediately. 
;    Here is a demo: