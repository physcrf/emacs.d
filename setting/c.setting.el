;; C and C++ mode
(require 'company)

(defun enable-company-mode ()
  (company-mode)
  (local-set-key [(control tab)] 'company-complete-common))

(add-hook 'c-mode-common-hook 'enable-company-mode)
(add-hook 'c++mode-hook 'enable-company-mode)


(provide 'c.setting)
