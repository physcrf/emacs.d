(require 'org)

(defun beamer-export-and-compile ()
  (interactive)
  (progn
    (org-beamer-export-to-latex)
    (compile "make")))

(defun latex-export-and-compile ()
  (interactive)
  (progn
    (org-latex-export-to-latex)
    (compile "make")))

(define-key org-mode-map (kbd "<C-left>") 'left-word)
(define-key org-mode-map (kbd "<C-right>") 'right-word)
(define-key org-mode-map (kbd "<C-M-left>") 'windmove-left)
(define-key org-mode-map (kbd "<C-M-right>") 'windmove-right)
(define-key org-mode-map (kbd "<C-M-up>") 'windmove-up)
(define-key org-mode-map (kbd "<C-M-down>") 'windmove-down)
(define-key org-mode-map (kbd "<f4>") 'beamer-export-and-compile)
(define-key org-mode-map (kbd "<f5>") 'latex-export-and-compile)
(define-key org-mode-map (kbd "×") (lambda () (interactive) (insert-char 42)))
(define-key org-mode-map (kbd "＋") (lambda () (interactive) (insert-char 43)))
(define-key org-mode-map (kbd "－") (lambda () (interactive) (insert-char 45)))
(define-key org-mode-map (kbd "【") (lambda () (interactive) (insert-char 91)))
(define-key org-mode-map (kbd "】") (lambda () (interactive) (insert-char 93)))
  

(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(add-hook 'org-mode-hook 'flyspell-mode)

(setq org-latex-listings 'minted)
(setq org-latex-minted-options '(("frame" "single")))

(require 'ox-latex)
(add-to-list 'org-latex-classes
	     '("aps"
	       "\\documentclass{revtex4-1}
\\usepackage{graphicx}
\\usepackage{amsmath}
\\usepackage{amssymb}
\\usepackage{bm}
\\usepackage{physics}
\\usepackage{subfigure}
\\usepackage[colorlinks=true,linkcolor=blue,urlcolor=blue,citecolor=blue]{hyperref}
[NO-DEFAULT-PACKAGES]
[PACKAGES]
[EXTRA]"
	       ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph{%s}")))

(add-to-list 'org-latex-classes
	     '("doc"
	       "\\documentclass{book}
\\usepackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}
\\usepackage{graphicx}
\\usepackage{amsmath}
\\usepackage{amssymb}
\\usepackage{bm}
\\usepackage{times}
\\usepackage{physics}
\\usepackage{subfigure}
\\usepackage[colorlinks=true,linkcolor=blue,urlcolor=blue,citecolor=blue]{hyperref}
\\usepackage{minted}
[NO-DEFAULT-PACKAGES]
[PACKAGES]
[EXTRA]"
	       ("\\chapter{%s}" . "\\chapter*{%s}")
	       ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
	       ("\\subsubsection*{%s} . \\subsubsection{%s}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph{%s}")))

(add-to-list 'org-latex-classes
	     '("reply"
	       "\\documentclass{revtex4-1}
\\usepackage{graphicx}
\\usepackage{amsmath}
\\usepackage{amssymb}
\\usepackage{bm}
\\usepackage{physics}
\\usepackage{subfigure}
\\usepackage{txfonts}
\\usepackage[colorlinks=true,linkcolor=blue,urlcolor=blue,citecolor=blue]{hyperref}
\\setlength{\\parindent}{0pt}
\\setlength{\\parskip}{5pt}
[NO-DEFAULT-PACKAGES]
[PACKAGES]
[EXTRA]"
	       ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph{%s}")))

(provide 'org.setting)
