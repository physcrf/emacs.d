(require 'slime)
(setf inferior-lisp-program "/usr/bin/sbcl --dynamic-space-size 4096")
(slime-setup '(slime-fancy))
(add-hook 'lisp-mode-hook
	  (lambda ()
	    (local-set-key (kbd "<C-tab>") 'completion-at-point)))

(require 'slime-cl-indent)
(add-to-list 'slime-contribs 'slime-cl-indent)

(require 'paredit)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook 'enable-paredit-mode)

(define-key paredit-mode-map (kbd "<C-left>") 'left-word)
(define-key paredit-mode-map (kbd "<C-right>") 'right-word)
(define-key paredit-mode-map (kbd "<C-M-left>") 'paredit-backward)
(define-key paredit-mode-map (kbd "<C-M-right>") 'paredit-forward)

(provide 'slime.setting)
