(require 'julia-mode)
(require 'julia-repl)

(add-hook 'julia-mode-hook 'julia-repl-mode)

(provide 'julia.setting)
