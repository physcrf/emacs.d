(defun open-newline ()
  (interactive)
  (move-end-of-line 1)
  (newline))

(defun open-previous-line ()
  (interactive)
  (move-beginning-of-line 1)
  (newline)
  (previous-line))

(defun compile-now ()
  (interactive)
  (compile "make"))

(global-set-key (kbd "C-o") 'open-newline)
(global-set-key (kbd "C-S-O") 'open-previous-line)
(global-set-key (kbd "<f5>") 'compile-now) 


;; https://www.emacswiki.org/emacs/UnfillParagraph
(defun unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text."
  (interactive (progn (barf-if-buffer-read-only) '(t)))
  (let ((fill-column (point-max))
	(emacs-lisp-docstring-fill-column t))
    (fill-paragraph nil region)))

(global-set-key (kbd "M-s") 'unfill-paragraph)

(provide 'utility.setting)
