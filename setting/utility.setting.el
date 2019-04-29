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

(provide 'utility.setting)
