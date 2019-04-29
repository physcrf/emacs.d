;; Custom settings
(add-to-list 'load-path (expand-file-name "~/.emacs.d/setting"))

(setq package-selected-packages
      '(org-ref markdown-mode pyim gnuplot-mode slime cdlatex auctex))


(require 'custom.setting)
(require 'utility.setting)
(require 'melpa.setting)
(require 'cdlatex.setting)
(require 'auctex.setting)
(require 'slime.setting)
(require 'org.setting)
(require 'org-ref.setting)
(require 'pyim.setting)

(provide 'init)
