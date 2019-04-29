;; Custom settings

(custom-set-variables
 '(inhibit-startup-screen t)
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . "okular %s"))))
 '(org-highlight-latex-and-related (quote (latex script entities)))
 '(package-selected-packages
   (quote
    (org-ref markdown-mode+ markdown-mode pyim gnuplot-mode slime cdlatex auctex)))
 '(show-paren-mode t)
 '(make-backup-files nil))

(custom-set-faces
 '(default ((t (:family "DejaVu Sans Mono" :foundry "1ASC" :slant normal :weight normal :height 98 :width normal))))
 '(region ((t (:background "light gray" :distant-foreground "gtk_selection_fg_color")))))


(setq ring-bell-function 'ignore)
;;(setq make-backup-files nil)
(windmove-default-keybindings 'meta)
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'custom.setting)
