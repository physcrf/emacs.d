;; Custom settings

(setq inhibit-startup-screen t)
(show-paren-mode t)
(setq ring-bell-function 'ignore)
(setq make-backup-files nil)
(windmove-default-keybindings 'meta)
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'custom.setting)
