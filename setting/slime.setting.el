(require 'slime)
(setf inferior-lisp-program "/usr/bin/sbcl --dynamic-space-size 4096")
(slime-setup '(slime-fancy))
(add-hook 'lisp-mode-hook
	  (lambda ()
	    (local-set-key (kbd "<C-tab>") 'slime-complete-symbol)))

(require 'slime-cl-indent)
(add-to-list 'slime-contribs 'slime-cl-indent)

(provide 'slime.setting)
