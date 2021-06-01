(setq cdlatex-math-symbol-alist
      '((?$ ("\\dag"))
	(?. ("\\cdot" "\\cdots"))
	(?^ ("\\hat" "\\uparrow"))
	(?B ("\\bm"))))

(setq cdlatex-env-alist
      '(("equation" "\\begin{equation}
?
\\end{equation}" nil)
	("figure" "\\begin{figure}[htbp]
\\centerline{\\includegraphics[]{AUTOFILE}}
\\caption{}
\\end{figure}" nil)
	("split" "\\begin{split}
?
\\end{split}" nil)))

(setq cdlatex-command-alist
      '(("spl" "Insert an SPLIT environment template" "" cdlatex-environment
	 ("split") t nil)))

(provide 'cdlatex.setting)
