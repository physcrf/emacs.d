;; Custom settings

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(org-agenda-files '("~/Projects/USi3/draft/paper/usi3.org"))
 '(org-file-apps
   '((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . "okular %s")))
 '(org-highlight-latex-and-related '(latex script entities))
 '(package-selected-packages
   '(org-ref markdown-mode+ markdown-mode pyim gnuplot-mode slime cdlatex auctex))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Droid Sans Mono" :foundry "1ASC" :slant normal :weight normal :height 117 :width normal))))
 '(region ((t (:background "light gray" :distant-foreground "gtk_selection_fg_color")))))

(add-to-list 'load-path (expand-file-name "~/.emacs.d/setting"))

(require 'custom.setting)
(require 'utility.setting)
(require 'melpa.setting)
(require 'cdlatex.setting)
(require 'auctex.setting)
(require 'slime.setting)
(require 'org.setting)
(require 'org-ref.setting)
;(require 'pyim.setting)
;(require 'markdown.setting)
(require 'ido.setting)
(require 'julia.setting)
;(require 'c.setting)

