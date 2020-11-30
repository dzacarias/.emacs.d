;; No scrollbars
(scroll-bar-mode -1)

;; Take up full window (but not fullscreen mode)
(add-to-list 'default-frame-alist '(width  . 360))
(add-to-list 'default-frame-alist '(height . 95))
;; Default font
(add-to-list 'default-frame-alist '(font . "SF Mono-12"))

;; Mac keys (from https://github.com/purcell/emacs.d/blob/master/lisp/init-osx-keys.el)
(when *is-a-mac*
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none) ; Useful to add special chars
  ;; Make mouse wheel / trackpad scrolling less jerky
  (setq mouse-wheel-scroll-amount '(1
                                    ((shift) . 5)
                                    ((control))))
  (dolist (multiple '("" "double-" "triple-"))
    (dolist (direction '("right" "left"))
      (global-set-key (read-kbd-macro (concat "<" multiple "wheel-" direction ">")) 'ignore)))
  (global-set-key (kbd "M-`") 'ns-next-frame)
  (global-set-key (kbd "M-h") 'ns-do-hide-emacs)
  (global-set-key (kbd "M-˙") 'ns-do-hide-others)
  (with-eval-after-load 'nxml-mode
    (define-key nxml-mode-map (kbd "M-h") nil))
  (global-set-key (kbd "M-ˍ") 'ns-do-hide-others) ;; what describe-key reports for cmd-option-h
  )

(require 'whitespace)
(setq whitespace-line-column 120) ;; limit line length
