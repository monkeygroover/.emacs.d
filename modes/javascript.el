;; JavaScript mode config
;;
;; You can run a Node REPL by running C-c C-r on any file
;;
;;
(setenv "NODE_NO_READLINE" "1")

;; Use node as the REPL. You can set this to something else like moz etc if required
(setq inferior-js-program-command "node")

(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.js$"   . js2-mode))

(add-hook 'js-mode-hook 'js2-minor-mode)

;; Keyboard shortcuts for JS2 mode
;;
(add-hook 'js2-mode-hook
  '(lambda ()
    (local-set-key "\C-c\C-r" 'run-js)
    (local-set-key "\C-c\C-e" 'js-send-last-sexp)
    (local-set-key "\C-c\C-l" 'js-send-buffer)))
