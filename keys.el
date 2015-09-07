;; Key bindings

;; (setq mac-option-modifier 'super)
;; (setq mac-command-modifier 'meta)

(global-set-key (kbd "C-x <ESC> a") "α")
(global-set-key (kbd "C-x <ESC> b") "β")
(global-set-key (kbd "C-x <ESC> l") "λ")

(global-set-key "\C-x\C-b" 'buffer-menu)

(global-set-key (kbd "M-3")
  '(lambda () (interactive) (insert "#")))

;; Steve Yegge Inspired keys
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
