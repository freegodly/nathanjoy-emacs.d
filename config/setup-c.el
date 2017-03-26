;; company-c-headers
(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))


; IMPORTANT: If you want to complete C++ header files, 
; you have to add its paths since by default company-c-headers only 
; includes these two system include paths: /usr/include/ 
; and /usr/local/include/. To enable C++ header completion for 
; standard libraries, you have to add its path, for example, 
; like this:
; (add-to-list 'company-c-headers-path-system "/usr/include/c++/4.8/")



;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;; Available C style:
;; “gnu”: The default style for GNU projects
;; “k&r”: What Kernighan and Ritchie, the authors of C used in their book
;; “bsd”: What BSD developers use, aka “Allman style” after Eric Allman.
;; “whitesmith”: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; “stroustrup”: What Stroustrup, the author of C++ used in his book
;; “ellemtel”: Popular C++ coding standards as defined by “Programming in C++, Rules and Recommendations,” Erik Nyquist and Mats Henricson, Ellemtel
;; “linux”: What the Linux developers use for kernel development
;; “python”: What Python developers use for extension modules
;; “java”: The default style for java-mode (see below)
;; “user”: When you want to define your own style
(setq c-default-style  "linux") ;; set style to "linux"

(use-package cc-mode
  :init
  (define-key c-mode-map  [(tab)] 'company-complete)
  (define-key c++-mode-map  [(tab)] 'company-complete))

(provide 'setup-c)



; Key	Binding
; C-c @ C-c	Command: hs-toggle-hiding
;  	Toggle hiding/showing of a block
; C-c @ C-h	Command: hs-hide-block
;  	Select current block at point and hide it
; C-c @ C-l	Command: hs-hide-level
;  	Hide all block with indentation levels
;  	below this block
; C-c @ C-s	Command: hs-show-block
;  	Select current block at point and show it.
; C-c @ C-M-h	Command: hs-hide-all
;  	Hide all top level blocks, displaying
;  	only first and last lines.
; C-c @ C-M-s	Command: hs-show-all
;  	Show everything