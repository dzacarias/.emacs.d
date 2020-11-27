(require 'auto-fix)

(add-hook 'auto-fix-mode-hook
          (lambda () (add-hook 'before-save-hook #'auto-fix-before-save)))

(defun setup-ruby-auto-fix ()
  (setq-local auto-fix-command "standardrb")
  (setq-local auto-fix-option "--fix")
  (auto-fix-mode +1))

(add-hook 'ruby-mode-hook #'setup-ruby-auto-fix)
